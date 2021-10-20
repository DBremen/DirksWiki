$sourceDocsFolder = 'C:\scripts\wikiDocs'
$repoFolder = $PSScriptRoot
function build () {
    if (Test-Path "$repoFolder\docs"){
        dir "$repoFolder\docs" -Exclude 'README.md' | del -Recurse -Force
    }
    if (Test-Path "$repofolder\site"){
        dir "$repofolder\site" | del -Recurse -Force
    }
    $folders = (dir $sourceDocsFolder -Directory)
    foreach ($folder in $folders) {
        $currParentFolder = mkdir ($repoFolder + '\docs\' + $folder.Name)
        $files = dir $folder.FullName 
        $files = ($files.where{!($_.Name.StartsWith('~'))})
        foreach ($file in $files) {
            Write-Host -ForegroundColor Yellow "Working on $($file.Name)"
            $parameters = New-Object System.Collections.ArrayList
            $null = $parameters.Add('-t')
            $null = $parameters.Add('markdown-simple_tables-multiline_tables-grid_tables')
            $null = $parameters.Add('-o')
            $exportPath = Join-Path -Path $currParentFolder -ChildPath ([IO.Path]::ChangeExtension($file.Name,'md'))
            $null = $parameters.Add($exportPath)
            $null = $parameters.Add('--lua-filter')
            $null = $parameters.Add('.\removeImageTags.lua')
            $mediaFolder = Join-Path $currParentFolder ('media_' + [IO.Path]::GetFileNameWithoutExtension($file.Name))
            $null = $parameters.Add("--extract-media=$mediaFolder")
            $null = $parameters.Add($file.FullName)
            & pandoc $parameters
            #pandoc -t markdown-simple_tables-multiline_tables-grid_tables -o output.md --lua-filter .\removeImageTags.lua --extract-media=./ .\Model_thinking.docx
        }
    }
    copy $repoFolder\README.md $repoFolder\docs
    #make all image links relative 
    $files = (dir "$repoFolder\docs" -Recurse | sls '\\media_').Path | sort -Unique
    foreach ($file in $files){
        $replacements = (sls -path $file -pattern '^(!\[.*\]).*\\(media_[^)]+)').foreach{
            [PSCustomObject]@{
                ToReplace = $_.Line
                Replacement = $_.Matches.Groups[1].Value + '(' + $_.Matches.Groups[2].Value + ')'
            }
        }
        $content = Get-Content -Path $file
        $replacements.foreach{$content = $content.Replace($_.toreplace,$_.replacement)}
        $content | set-content $file
    }
    mkdocs build
}
    



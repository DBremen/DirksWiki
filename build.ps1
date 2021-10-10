$sourceDocsFolder = 'C:\scripts\wikiDocs'
$repoFolder = 'C:\scripts\DirksWiki\'
function build ($UpdateFilePath = '',[switch]$All) {
    if ($All){
        dir $repoFolder -Exclude '*.ps1','.git','README.md' | del -Recurse -Force
        $folders = dir $sourceDocsFolder -Directory
        foreach ($folder in $folders) {
            $currParentFolder = mkdir "$repoFolder\$($folder.Name)"
            $files = dir $folder.FullName 
            $files = $files.where{!($_.Name.StartsWith('~'))}
            foreach ($file in $files) {
                Write-Host -ForegroundColor Yellow "Working on $($file.Name)"
                $exportFolder = (mkdir "$($currParentFolder.FullName)\$($file.BaseName)").FullName
                gitbook-convert $file.FullName $exportFolder
            }
        }
    }
    else{
        $file = Get-Item $UpdateFilePath
        $folder = Split-Path $UpdateFilePath -Parent | Get-Item
        $parentFolder = "$repoFolder\$($folder.Name)"
        if (!(Test-Path $parentFolder)){
            $null = mkdir $parentFolder
        }
        $exportFolder =  "$($parentFolder)\$($file.BaseName)"
        if (Test-Path $exportFolder){
            del $exportFolder -Recurse -Force
        }
        $null = mkdir $exportFolder
        gitbook-convert $file.FullName $exportFolder
   }
   & book sm
}



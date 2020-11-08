$sourceDocsFolder = 'C:\scripts\wikiDocs'
$repoFolder = 'C:\scripts\DirksWiki\'
function build ($UpdateFilePath = '',[switch]$All) {
    if ($All){
        dir $repoFolder -Exclude '*.ps1','.git'  | del -Recurse -Force
        $folders = dir $sourceDocsFolder -Directory
        foreach ($folder in $folders) {
            $currParentFolder = mkdir "$repoFolder\$($folder.Name)"
            $files = dir $folder.FullName 
            foreach ($file in $files) {
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
        $exportFolder =  "$($parentFolder.FullName)\$($file.BaseName)"
        if (Test-Path $exportFolder){
            del $exportFolder -Recurse -Force
        }
        $null = mkdir $exportFolder
        gitbook-convert $file.FullName $exportFolder
   }
}
build -UpdateFilePath "C:\scripts\wikiDocs\Process Systems Models\Model thinking.docx"


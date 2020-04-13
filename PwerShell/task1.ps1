cls
$Data=get-content -path "C:\Users\amodepalli\Desktop\PwerShell\Songs.txt"
$SongDir="C:\Users\amodepalli\Desktop\PwerShell\Songs"
foreach($list in $Data){
$LangDir=$list.Split("_")[0]
$MovieDir=$list.Split("-")[0].split("_")[1]
$SongFile=$list.Split("-")[1].replace(".txt",".csv")
$SongsChk=Test-path -path $SongDir
    if($SongsChk -eq $false){
        New-Item -path $SongDir -ItemType directory
    }
    $LangName=$SongDir+"\"+$LangDir
    $LangChk=Test-path -path $LangName
    if($LangChk -eq $false){
        New-Item -Path $LangName -ItemType directory
    }
    $MovieName=$LangName+"\"+$MovieDir
    $MovieChk=Test-path -path $MovieName
    if($MovieChk -eq $false){
        New-Item -path $MovieName -ItemType directory
    }
    $SongName=$MovieName+"\"+$SongFile
    $SongChk=Test-Path -path $SongName
    if($SongChk -eq $false){
        New-Item -Path $SongName -ItemType file
    }
    
}


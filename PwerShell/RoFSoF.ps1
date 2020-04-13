cls
$Data=get-service
$Dir="C:\Users\amodepalli\Desktop\PwerShell"
foreach($serv in $Data){
$Status=$serv.Status
$SerName=$serv.Name
$DirChk=test-path -path $Dir\$Status
    if($DirChk -eq $false){
        New-Item -path $Dir\$Status -ItemType directory
    }
    if($Status -eq "Running"){
    $RservPath=$Dir+"\"+$Status+"\"+$SerName+".txt"
    $RservPathChk=test-path -path $RservPath
    if($RservPathChk -eq $false){
        New-item -path $RservPath
        }
    }
    if($Status -eq "stopped"){
    $SservPath=$Dir+"\"+$Status+"\"+$SerName+".txt"
    $SservPathChk=test-path -path $SservPath
    if($SservPathChk -eq $false){
        New-item -path $SservPath
        }
    }

}
cls
$Data=get-content -path "C:\Users\amodepalli\Desktop\PwerShell\Countries.txt"
foreach($list in $Data){
$Fname=$list.Split(",")[0]
$Country=$list.Split(",")[3]
$domain=$list.Split("@")[1].Split(".")[0]
if($Country -eq "USA"){
    if ($domain -eq "gmail"){
    $Fname
   }
   }
}

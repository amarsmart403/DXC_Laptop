cls
$Data=get-content -path "C:\Users\amodepalli\Desktop\PwerShell\Countries.txt"
foreach($list in $Data){
$Fname=$list.Split(",")[0]
$Lname=$list.Split(",")[1]
$Email=$list.Split(",")[5]
$Country=$list.Split(",")[3]
$domain=$list.Split("@")[1].Split(".")[0]
$Pemail=$Fname+"_"+$Lname+"@"+$domain+".com"
if(($Fname+"_"+$Lname -ne ($Email).Split("@")[0]) -and ($Country -eq "USA" -or $Country -eq "Canada") -and ($domain -ne "gmail" -and $domain -ne "hotmail")){
    $list >> "C:\Users\amodepalli\Desktop\PwerShell\temp.txt"
    }
}

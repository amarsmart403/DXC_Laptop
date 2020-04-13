cls
$serlist=get-service
$serlist.Count
foreach($ser in $serlist){
 if (($ser).Status -eq "Running"){
  $ser.Name

  $checkfile=Test-Path -path "C:\Users\amodepalli\Desktop\PwerShell\Running.txt"
   if ($checkfile -eq $false){
    New-Item -Path "C:\Users\amodepalli\Desktop\PwerShell\" -Name "Running.txt" -ItemType File
   }
  
  $ser.Name >> "C:\Users\amodepalli\Desktop\PwerShell\Running.txt"
  
 }
}
cls 
$Source_Path="C:\Users\amodepalli\Desktop\PwerShell\Running\*"
$Dest_Path="C:\Users\amodepalli\Desktop\PwerShell\Stopped"
Move-item –path $Source_Path –destination $Dest_Path
$Child=get-childitem -Path "C:\Users\amodepalli\Desktop\PwerShell\Stopped" -Recurse
$Child.count
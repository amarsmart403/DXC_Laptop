cls
$Results = @()
$A=gci -force -Recurse "C:\Users\amodepalli\Desktop\PwerShell" | Sort-Object -Property LastWriteTime 
$B=gci -force -Recurse "C:\Users\amodepalli\Desktop\PwerShell" | Sort-Object size -Descending 
$C=Get-History | Sort-Object -Property Id -Descending
$D=Get-Content -Path "C:\Users\amodepalli\Desktop\PwerShell\Copy.ps1"
$Result=Get-Content -Path "C:\Users\amodepalli\Desktop\PwerShell\temp.txt" | Sort-Object -Unique | select -First 2 
$Results += $Result
$Result

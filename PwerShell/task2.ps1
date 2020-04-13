cls
$Data=get-content -path "C:\Users\amodepalli\Desktop\PwerShell\Countries.txt"
$CountDir="C:\Users\amodepalli\Desktop\PwerShell\Country"
foreach($list in $Data){
$Fname=$list.split(",")[0]
$Lname=$list.split(",")[1]
$Country=$list.split(",")[3]
$Email=$list.split(",")[5]
$Domain=$list.split("@")[1].split(".")[0]
$CountChk=test-path -path $CountDir
    if($CountChk -eq $false){
        New-Item -path $CountDir -ItemType directory
    }
    $CountPath=$CountDir+"\"+$Country
    $CountPathChk=test-path -path $CountPath
    if($CountPathChk -eq $false){
        New-Item -path $CountPath -ItemType directory
    }
    $DomainFile=$CountPath+"\"+$Domain+".txt"
    $DomainChk=test-path -path $DomainFile
    if(($DomainChk -eq $false) -and ($Domain -eq "gmail" -or $Domain -eq "hotmail" -or $Domain -eq "yahoo")) {
        New-Item -path $DomainFile -ItemType file
    }
    if($Country -eq "Australia" -and $Domain -eq "gmail"){
    $Fname+","+$Lname+","+$Country+","+$Email >> "$DomainFile"
    }
        if($Country -eq "Australia" -and $Domain -eq "hotmail"){
        $Fname+","+$Lname+","+$Country+","+$Email >> "$DomainFile"
        }
            if($Country -eq "Australia" -and $Domain -eq "yahoo"){
            $Fname+","+$Lname+","+$Country+","+$Email >> "$DomainFile"
            }
    if($Country -eq "Canada" -and $Domain -eq "gmail"){
    $Fname+","+$Lname+","+$Country+","+$Email >> "$DomainFile"
    }
        if($Country -eq "Canada" -and $Domain -eq "hotmail"){
        $Fname+","+$Lname+","+$Country+","+$Email >> "$DomainFile"
        }
            if($Country -eq "Canada" -and $Domain -eq "yahoo"){
            $Fname+","+$Lname+","+$Country+","+$Email >> "$DomainFile"
            }
    if($Country -eq "UK" -and $Domain -eq "gmail"){
    $Fname+","+$Lname+","+$Country+","+$Email >> "$DomainFile"
    }
        if($Country -eq "UK" -and $Domain -eq "hotmail"){
        $Fname+","+$Lname+","+$Country+","+$Email >> "$DomainFile"
        }
            if($Country -eq "UK" -and $Domain -eq "yahoo"){
            $Fname+","+$Lname+","+$Country+","+$Email >> "$DomainFile"
            }
     if($Country -eq "USA" -and $Domain -eq "gmail"){
     $Fname+","+$Lname+","+$Country+","+$Email >> "$DomainFile"
    }
        if($Country -eq "USA" -and $Domain -eq "hotmail"){
        $Fname+","+$Lname+","+$Country+","+$Email >> "$DomainFile"
        }
            if($Country -eq "USA" -and $Domain -eq "yahoo"){
            $Fname+","+$Lname+","+$Country+","+$Email >> "$DomainFile"
            }
}
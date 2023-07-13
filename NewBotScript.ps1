$pshost = Get-Host
$psWindow = $pshost.UI.RawUI
$newSize =$psWindow.BufferSize
$newSize.Height = 4000
$newSize.Width = 200
$psWindow.BufferSize = $newSize
$newSize = $psWindow.WindowSize
$newSize.Height = 8
$newSize.Width = 20
$psWindow.WindowSize= $newSize
$psWindow.WindowTitle = "Coc Shit"

if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
    if ([int](Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty BuildNumber) -ge 6000) {
        $Command = "-File `"" + $MyInvocation.MyCommand.Path + "`" " + $MyInvocation.UnboundArguments
        Start-Process -FilePath PowerShell.exe -Verb RunAs -ArgumentList $Command
        Exit
 }
}

$BotSquadA = 1,4,7,10,13,16,19,22
$BotSquadB = 2,5,8,11,14,17,20,23
$BotSquadC = 3,6,9,12,15,18,21,00
$BotA = "Nil"
$BotB = "Nil"
$BotC = "Nil"
$BotD = "Nil"
$BotE = "Nil"
$BotList = New-Object -TypeName 'System.Collections.ArrayList';

function BotStop
{
	taskkill /f /im nox.exe
	timeout /t 3
	taskkill /f /im autoit3.exe
	timeout /t 3
	taskkill /f /im adb.exe
}

function AssgnBot ($BotStuff)
{
	$CurBot = Get-Process -Name 'AutoIt3' | Where { $_.MainWindowTitle } | Select-Object -ExpandProperty PropertyName MainWindowTitle 
	
	#Add Shit to the List
	if ($BotStuff -eq "A"){
		$BotA = $CurBot
		$BotList.add($CurBot)
	}elseif ($BotStuff -eq "B"){
		$BotA = $CurBot
		$BotList.add($CurBot)
	}elseif ($BotStuff -eq "C"){
		$BotA = $CurBot
		$BotList.add($CurBot)
	}elseif ($BotStuff -eq "D"){
		$BotA = $CurBot
		$BotList.add($CurBot)
	}elseif  ($BotStuff -eq"E"){
		$BotA = $CurBot
		$BotList.add($CurBot)
	}	
}

BotStop

do{
	$Time = Get-Date -Format "HHmm"
	$BotsRun=(Get-Process -Name 'AutoIt3').count
	
	If ($BotsRun -lt 5){
		If ($BotSquadA -contains $time.SubString(0,2)-And ($time.subString($time.Length - 2) -lt 58)){
			$BotSquad="A 1-5"
			start  C:\Users\namo\Desktop\Nam1\MyBot.run.au3 "Nam1 nox nox_1 /a /HideAndroid"
			timeout /t 15
			#AssgnBot ("A")
			timeout /t 45
			start C:\Users\namo\Desktop\Nam2\MyBot.run.au3 "Nam2 nox nox_2 /a /HideAndroid"
			timeout /t 15
			#AssgnBot ("B")
			timeout /t 45
			start C:\Users\namo\Desktop\Nam3\MyBot.run.au3 "Nam3 nox nox_3 /a /HideAndroid"
			timeout /t 15
			#AssgnBot ("C")
			timeout /t 45
			start C:\Users\namo\Desktop\Nam4\MyBot.run.au3 "Nam4 nox nox_4 /a /HideAndroid"
			timeout /t 15
			#AssgnBot ("D")
			timeout /t 45
			start C:\Users\namo\Desktop\Nam5\MyBot.run.au3 "Nam5 nox nox_5 /a /HideAndroid"
			timeout /t 15
			#AssgnBot ("E")
			
		}elseif ($BotSquadB -contains $time.SubString(0,2) -And ($time.subString($time.Length - 2) -lt 58)){
			$BotSquad="B 6-10"
			start  C:\Users\namo\Desktop\Nam6\MyBot.run.au3 "Nam6 nox nox_6 /a /HideAndroid"
			timeout /t 15
			#AssgnBot ("A")
			timeout /t 45
			start C:\Users\namo\Desktop\Nam7\MyBot.run.au3 "Nam7 nox nox_7 /a /HideAndroid"
			timeout /t 15
			#AssgnBot ("B")
			timeout /t 45
			start C:\Users\namo\Desktop\Nam8\MyBot.run.au3 "Nam8 nox nox_8 /a /HideAndroid"
			timeout /t 15
			#AssgnBot ("C")
			timeout /t 45
			start C:\Users\namo\Desktop\Nam9\MyBot.run.au3 "Nam9 nox nox_9 /a /HideAndroid"
			timeout /t 15
			#AssgnBot ("D")
			timeout /t 45
			start C:\Users\namo\Desktop\Nam10\MyBot.run.au3 "Nam10 nox nox /a /HideAndroid"
			timeout /t 15
			#AssgnBot ("E")
			
		}elseif ($BotSquadC -contains $time.SubString(0,2) -And ($time.subString($time.Length - 2) -lt 58)){
			$BotSquad="C 11-15z"
			start  C:\Users\namo\Desktop\Nam11\MyBot.run.au3 "Nam11 nox nox_11 /a /HideAndroid"
			timeout /t 15
			#AssgnBot ("A")
			timeout /t 45
			start C:\Users\namo\Desktop\Nam12\MyBot.run.au3 "Nam12 nox nox_12 /a /HideAndroid"
			timeout /t 15
			#AssgnBot ("B")
			timeout /t 45
			start C:\Users\namo\Desktop\Nam13\MyBot.run.au3 "Nam13 nox nox_13 /a /HideAndroid"
			timeout /t 15
			#AssgnBot ("C")
			timeout /t 45
			start C:\Users\namo\Desktop\Nam14\MyBot.run.au3 "Nam14 nox nox_14 /a /HideAndroid"
			timeout /t 15
			#AssgnBot ("D")
			timeout /t 45
			start C:\Users\namo\Desktop\Nam15\MyBot.run.au3 "Nam15 nox nox_15 /a /HideAndroid"
			timeout /t 15
			#AssgnBot ("E")
			
		}elseif ($time.subString($time.Length - 2) -gt 57){
			$BotSquad="Swap"
		}
		else{$BotSquad="Err"}
	}
	
	if ($time.subString($time.Length - 2) -gt 58) {if ($BotsRun -ne 0) {
		BotStop 
		$BotList.Clear()} 
	}
	
	#Write shit
	cls
	echo "Time:"$Time
	echo "Bots running:"$BotsRun
	echo "Squad:"$BotSquad
	Start-sleep -seconds 30
}while(1 -eq 1)		

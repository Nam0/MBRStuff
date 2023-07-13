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

$BotA = "Nil"
$BotB = "Nil"
$BotC = "Nil"
$BotD = "Nil"
$BotE = "Nil"

if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
    if ([int](Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty BuildNumber) -ge 6000) {
        $Command = "-File `"" + $MyInvocation.MyCommand.Path + "`" " + $MyInvocation.UnboundArguments
        Start-Process -FilePath PowerShell.exe -Verb RunAs -ArgumentList $Command
        Exit
 }
}

function BotStop
{
	taskkill /f /im nox.exe
	timeout /t 3
	taskkill /f /im autoit3.exe
	timeout /t 3
	taskkill /f /im adb.exe
}

BotStop

do{
	$Time = Get-Date -Format "HHmm"
	$BotsRun=(Get-Process -Name 'AutoIt3').count
	
	If ($BotsRun -lt 5){
		If ($time.SubString(0,2) % 2 -eq 0 -And ($time.subString($time.Length - 2) -lt 58)){
			$BotSquad="A"
			start  C:\Users\namo\Desktop\Nam1\MyBot.run.au3 "Nam1 nox nox_1 /a /HideAndroid"
			timeout /t 60
			start C:\Users\namo\Desktop\Nam2\MyBot.run.au3 "Nam2 nox nox_2 /a /HideAndroid"
			timeout /t 60
			start C:\Users\namo\Desktop\Nam3\MyBot.run.au3 "Nam3 nox nox_3 /a /HideAndroid"
			timeout /t 60
			start C:\Users\namo\Desktop\Nam4\MyBot.run.au3 "Nam4 nox nox_4 /a /HideAndroid"
			timeout /t 60
			start C:\Users\namo\Desktop\Nam5\MyBot.run.au3 "Nam5 nox nox_5 /a /HideAndroid"
			
		}elseif ($time.SubString(0,2) % 2 -ne 0 -And ($time.subString($time.Length - 2) -lt 58)){
			$BotSquad="B"
			start  C:\Users\namo\Desktop\Nam6\MyBot.run.au3 "Nam6 nox nox_6 /a /HideAndroid"
			timeout /t 60
			start C:\Users\namo\Desktop\Nam7\MyBot.run.au3 "Nam7 nox nox_7 /a /HideAndroid"
			timeout /t 60
			start C:\Users\namo\Desktop\Nam8\MyBot.run.au3 "Nam8 nox nox_8 /a /HideAndroid"
			timeout /t 60
			start C:\Users\namo\Desktop\Nam9\MyBot.run.au3 "Nam9 nox nox_9 /a /HideAndroid"
			timeout /t 60
			start C:\Users\namo\Desktop\Nam10\MyBot.run.au3 "Nam10 nox nox /a /HideAndroid"
			
		}elseif ($time.subString($time.Length - 2) -gt 57){
			$BotSquad="Swap"
		}
		else{$BotSquad="Err"}
	}
	
	if ($time.subString($time.Length - 2) -gt 58) {if ($BotsRun -ne 0) {BotStop} }
	
	#Write shit
	cls
	$Info = @()
	$Info += [pscustomobject]@{Info = "Time:"$Time; Bots = $BotA}
	$Info += [pscustomobject]@{Info = "Bots running:"$BotsRun; Bots = $BotB}
	$Info += [pscustomobject]@{Info = "Squad:"$BotSquad; Bots = $BotC}
	$Info += [pscustomobject]@{Info = "Attacks:"$BotsSttacking; Bots = $BotD}
	$Info += [pscustomobject]@{Info = "Last Start:"$LastStart; Bots = $BotE}
	$Info | Format-Table
}while(1 -eq 1)		

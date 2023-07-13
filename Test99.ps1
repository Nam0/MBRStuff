$BotA = "Nil"
$BotB = "Nil"
$BotC = "Nil"
$BotD = "Nil"
$BotE = "Nil"
$BotList = New-Object -TypeName 'System.Collections.ArrayList';

function AssgnBot ($BotStuff)
{
	$CurBot = Get-Process -Name 'AutoIt3' | Where { $_.MainWindowTitle } | Select-Object -ExpandProperty MainWindowTitle 
	
	#Add Shit to the List
	if ($BotStuff -eq "A"){
		$BotA = $CurBot[0]
        echo "BotA: "  $BotA
        echo "CurBot: "  $CurBot
        $botA.GetType()
		$BotList.add($CurBot)
	}elseif ($BotStuff -eq "B"){
		$BotB = $CurBot[1]
        echo "BotB: "  $BotB
        echo "CurBot: "  $CurBot
        $botB.GetType()
		$BotList.add($CurBot)
	}elseif ($BotStuff -eq "C"){
		$BotC = $CurBot[2]
        echo "BotC: "  $BotC
        echo "CurBot: "  $CurBot
        $botc.GetType()
		$BotList.add($CurBot)
	}elseif ($BotStuff -eq "D"){
		$BotD = $CurBot[3]
        echo "BotD: "  $BotD
        echo "CurBot: "  $CurBot
        $botD.GetType()
		$BotList.add($CurBot)
	}elseif  ($BotStuff -eq"E"){
		$BotE = $CurBot[4]
        echo "BotE: "  $BotE
        echo "CurBot: "  $CurBot
        $botE.GetType()
		$BotList.add($CurBot)
	}	
}
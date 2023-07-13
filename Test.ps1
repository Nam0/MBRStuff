$Info = @()
$Info += [pscustomobject]@{Info = "Time:"$Time; Bots = $BotA}
$Info += [pscustomobject]@{Info = "Bots running:"$BotsRun; Bots = $BotB}
$Info += [pscustomobject]@{Info = "Squad:"$BotSquad; Bots = $BotC}
$Info += [pscustomobject]@{Info = "Attacks:"$BotsSttacking; Bots = $BotD}
$Info += [pscustomobject]@{Info = "Last Start:"$LastStart; Bots = $BotE}
$Info | Format-Table
#PORTSCAN POR UNIDADE DE HOST POWERSHELL
param($ip,$porta)
if(!$ip -or !$porta){
    echo "VISUAL CARD - PORTSCAN"
    echo ".\portscan.ps1 192.168.0.1 80"
} else {
if (Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet){
echo "Porta Aberta"
} else {
echo "Porta Fechada"
}
}
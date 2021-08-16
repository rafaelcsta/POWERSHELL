#PORTSCAN MULTI PORTS - POWERSHELL
param($ip)
if(!$ip){
    echo "VISUAL CARD - PORTSCAN"
    echo ".\portscan.ps1 192.168.0.1"
} else {
$topports = 21,22,53,80,139,443,445,3306,8080,8081
try {foreach ($porta in $topports){
if (Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet){
echo "Porta $porta Aberta"
}} else {
    echo "Porta $porta Fechada"
}} catch {}
}
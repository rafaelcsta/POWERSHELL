#VISUAL PARSINGRECON
$site = Read-Host "Digite o site: "
$web = Invoke-WebRequest -uri "$site" -UseBasicParsing -Method Options
echo "O Servidor roda: "
$web.headers.server
echo ""
echo "O Servidor aceita os seguintes metodos: "
$web.headers.allow
echo ""
echo "Links encontrados: "
$web2 = Invoke-WebRequest -uri "$site" -UseBasicParsing
$web2.links.href | Select-String ://
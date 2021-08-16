#Visual Card - Pingsweep
param($p1)
if (!$p1){
    echo "Visual Card"
    echo "Exemplo de Uso: .\script.ps1 192.168.0"
} else {
echo "Varrendo Hosts Ativos na rede: "
foreach ($ip in 1..254){
try {$resp = ping -n 1 "$p1.$ip" | Select-String "bytes=32"
$resp.Line.split(' ')[2] -replace ":",""
} catch {}
}
}
#Meu Segundo Script PS
$ip = Read-host "Digite o ip: "
echo "Efetuando ping no Host $ip"
ping -n 1 $ip | Select-String "bytes=32"
#Meu Terceiro Script PS Testando Argumentos
param($ip)
if (!$ip){
    echo "Visual Card"
    echo "Exemplo de Uso: .\script.ps1 192.168.0.1"
} else {
echo "Efetuando ping no Host $ip"
ping -n 1 $ip | Select-String "bytes=32"
}
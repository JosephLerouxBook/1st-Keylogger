#chemin vers le fichier où est stocker ce qui est écrit
$path = ""

while (1) {
    if ([Console]::KeyAvailable){
        # read the key, and consume it so it won't
        # be echoed to the console:
        $keyInfo = [Console]::ReadKey($true)
        $output = $keyInfo.KeyChar
        # exit loop
        Add-Content -path $path $output -NoNewline
    }
}

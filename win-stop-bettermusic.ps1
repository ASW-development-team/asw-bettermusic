echo "Halting BETTERMUSIC"

$targets = @(
    "recensioni-seguite.jar",
    "recensioni.jar",
    "connessioni.jar",
    "album.jar",
    "api-gateway.jar"
)

foreach ($t in $targets) {
    $procs = Get-Process | Where-Object { $_.Path -like "*$t*" }
    if ($procs) {
        $procs | Stop-Process -Force
        echo "Stopped $t"
    } else {
        echo "$t not running"
    }
}
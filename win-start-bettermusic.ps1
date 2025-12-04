echo "Starting BETTERMUSIC"

Start-Process java -ArgumentList "-Xms64m -Xmx128m -jar album/build/libs/album.jar"
Start-Process java -ArgumentList "-Xms64m -Xmx128m -jar recensioni/build/libs/recensioni.jar"
Start-Process java -ArgumentList "-Xms64m -Xmx128m -jar connessioni/build/libs/connessioni.jar"
Start-Process java -ArgumentList "-Xms64m -Xmx128m -jar recensioni-seguite/build/libs/recensioni-seguite.jar"
Start-Process java -ArgumentList "-Xms64m -Xmx128m -jar api-gateway/build/libs/api-gateway.jar"
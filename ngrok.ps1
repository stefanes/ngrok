
# Download ngrok
$DOWLOAD_URL = "https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-windows-amd64.zip"
$OUTPUT_ZIP_FILE = "$PSScriptRoot\ngrok-v3-stable-windows-amd64.zip"
$OUTPUT_FILE = "$PSScriptRoot\ngrok-v3-stable-windows-amd64"
Invoke-WebRequest -Uri $DOWLOAD_URL -OutFile $OUTPUT_ZIP_FILE
Expand-Archive -Path $OUTPUT_ZIP_FILE -DestinationPath $OUTPUT_FILE -Force

# Launch ngrok
Start-Process -FilePath "$OUTPUT_FILE\ngrok.exe" -ArgumentList "http", "homeassistant.local:8123" -WindowStyle Minimized

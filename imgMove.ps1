# Run this script: powershell.exe ".\imgMove.ps1" -verb runAs

# Replace "/" with "\"
(Get-Content -Encoding UTF8 "images.txt") | `
% {$_ -replace "/", "\"} | `
Out-File -Encoding UTF8 -FilePath "images.txt" -Force

Import-CSV "article_images.csv" | ForEach-Object {

    $ogPath = $_.'imagePath'
    $gnieServer = "\\enter gnie instance url here\$ogPath"
    $newLocation = $_.'newFolder'
    
    # Copy image from ogPath to new location

    Copy-Item $gnieServer -Destination $newLocation

    # log but it is only on Robocopy?


    }
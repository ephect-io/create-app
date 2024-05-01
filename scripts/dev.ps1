# Get the target argument
$Target = $args[0]

# Get the current working directory
$CWD = Get-Location

# Get the document root from the config file
$DOCROOT = (Get-Content "$CWD\config\document_root" -Head 1)

# Check if the target is missing
if ([string]::IsNullOrEmpty($Target)) {
    Write-Host "Target is missing."
    exit 1
}

# Check if the target is "all"
if ($Target -eq "all") {
    # Remove the dist directory
    Remove-Item -Path "dist" -Recurse -Force -ErrorAction SilentlyContinue

    Write-Host "Building web components..."
    # Run webpack with the config file
    webpack --config webpack.config.js

    # Copy the app.min.js file to the document root
    Copy-Item -Path "dist\app.min.js" -Destination $DOCROOT

    # Copy the app assets to the document root
    Copy-Item -Path "app\Assets\*" -Destination $DOCROOT -Recurse

    # Create the modules directory if it doesn't exist
    if (!(Test-Path -Path "$DOCROOT\modules")) {
        New-Item -Path "$DOCROOT\modules" -ItemType Directory
    }

    # Copy the human-writes.min.js file to the modules directory
    Copy-Item -Path "node_modules\human-writes\dist\web\human-writes.min.js" -Destination "$DOCROOT\modules"

    # Run the egg build command
    php ./egg build
}

exit 0

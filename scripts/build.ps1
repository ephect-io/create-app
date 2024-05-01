# Get the target argument
$Target = $args[0]

# Get the current working directory
$CWD = Get-Location

# Get the document root from the config file
$DocRoot = Get-Content -Path "$CWD\config\document_root" -Head 1

# Check if the target is missing
if ([string]::IsNullOrEmpty($Target)) {
    Write-Host "Target is missing."
    Exit 1
}

# Check if the target is "all"
if ($Target -eq "all") {
    # Remove the dist directory
    Remove-Item -Path "dist" -Recurse -Force -ErrorAction SilentlyContinue

    Write-Host "Compiling the javascripts..."
    # Run the Gulp task
    gulp

    # Copy the app.min.js file to the document root
    Copy-Item -Path "dist\app.min.js" -Destination $DocRoot

    # Copy the app/Assets directory to the document root
    Copy-Item -Path "app\Assets\*" -Destination $DocRoot -Recurse

    # Check if the modules directory exists in the document root
    if (!(Test-Path -Path "$DocRoot\modules")) {
        # Create the modules directory
        New-Item -Path "$DocRoot\modules" -ItemType Directory
    }

    # Copy the human-writes.min.js file to the modules directory
    Copy-Item -Path "node_modules\human-writes\dist\web\human-writes.min.js" -Destination "$DocRoot\modules"

    # Run the PHP egg build command
    php ./egg build
}

Exit 0

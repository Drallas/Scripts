# Install Chocolatey Apps

# Apps to install
$chocoList = @("mac-precision-touchpad", "microsoft-windows-terminal", "vscode", "files", "Bitwarden", "notion")

# Install apps from chocoList
foreach ($app in $chocoList) {
    echo "Installing $app"
    choco install $app --force
    # check if the app is installed
}

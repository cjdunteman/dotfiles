echo "Starting npm script"

# Get the latest release tag from github
TAG=$(gh release list -L 1 -R https://github.com/nvm-sh/nvm)
URL="https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh" # nvm repo URL
# Replace tag in URL with latest tag
NEW_URL="${URL/v0.00.0/"$TAG"}"
# Download and install latest release
curl -o- "$NEW_URL" | bash

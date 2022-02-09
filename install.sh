os_name="$(uname -s)"

if [ "$os_name" == "Darwin" ]
then
    printf "Detected macOS."
    source mac/install.sh
elif [ "$os_name" == "Linux" ]
then
    printf "Detected Ubuntu."
    source ubuntu/install.sh
else
    printf "This script is only for macOS or Ubuntu."
fi

# Proceeding to universal install

# Install rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Build Foundry from source
cargo install --git https://github.com/gakonst/foundry --bins --locked
os_name="$(uname -s)"

if [ "$os_name" == "Darwin" ]; then
    printf "Detected macOS."
    source ./mac/install.sh
    
elif [ "$os_name" == "Linux" ]; then
    printf "Detected Ubuntu."
    source ./ubuntu/install.sh
else
    printf "This script is only for macOS or Ubuntu."
    fi

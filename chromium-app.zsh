# Place in ~/bin/
# $1 App ID
# $2 Profile number

if [ $2 -eq 0 ]; then
    CHROMIUM_PROFILE="Default"
else
    CHROMIUM_PROFILE="Profile "$2
fi

if [ $1 -eq 0 ]; then
    chromium --profile-directory=$CHROMIUM_PROFILE
else
    chromium --app-id=$1 --profile-directory=$CHROMIUM_PROFILE
fi


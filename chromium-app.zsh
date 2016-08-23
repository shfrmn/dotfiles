# Place in ~/bin/
# $1 App ID
# $2 Profile number

if [ $2 -eq 0 ]; then
    CHROMIUM_PROFILE="Default"
else
    CHROMIUM_PROFILE="Profile "$2
fi

if [ $1 = "noapp" ]; then
    nohup chromium --profile-directory=$CHROMIUM_PROFILE &>/dev/null &
else
    nohup chromium --app-id=$1 --profile-directory=$CHROMIUM_PROFILE &>/dev/null &
fi


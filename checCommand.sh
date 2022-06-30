checkCommand () {
    if command -v "$1" >/dev/null; then
        : # OK command exists
        return 1
    else
        return 0
    fi
}

if checkCommand npm; then 
echo "command npm not found"
fi

if checkCommand php; then
echo "command php not found"
fi
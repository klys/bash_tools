
isPHPinstalled() {
    #this implementation is not good to where PHP is not installed
    var=$(php -v | grep -c "PHP")
    echo "$var"

    if [ $var == "0" ]; then
        echo "php NO installed"
    else
        echo "php installed!"
    fi

}

isPHPinstalled


isPHPVersion() {
    #this must be run only if PHP is installed
    var=$(php -v | grep -c "PHP $1")
    echo "$var"

    if [ $var == "0" ]; then
        echo "php $1 NO installed"
    else
        echo "php $1 installed!"
    fi
}

isPHPVersion "5"
isPHPVersion "7"
isPHPVersion "8"

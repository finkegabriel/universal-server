#!/bin/sh

{ 
    # try
    while :
    do
        read -s -n 4 key
        array+=($key)
        if [[ $key = "" ]]; then 
            echo 'You pressed enter!'
            echo "${array[*]}"
            unset array
            echo "${#array[@]}"
        else
            echo "You pressed '$key'"
            echo "${#array[@]}"
            echo $array
    fi
    done
    #output
} || { 
    # catch
    echo "server end"
}
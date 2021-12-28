#!/usr/bin/bash

function diamonds {
    for (( i=1;i<=$1 ;i++))
    do
        for (( k=$1;k>=i;k-- ))
        do
            echo -n " "
        done
        for (( c=1;c<=i;c++ ))
        do
            echo -n " *"
            sum=$(($sum+1))
        done
        echo ""
    done

    max=$(($1 - 1))
    for (( i=$max;i>=1;i--))
    do
        for (( k=i;k<=$max;k++ ))
        do
            if [ $k -eq $max ]
            then
                echo -n " "
            fi
            echo -n " "
        done
        for (( o=1;o<=$i;o++ ))
        do
            echo -n " *"
            sum=$(($sum+1))
        done
        echo ""
    done

}
read -p "Please Enter an integer: " input


if [[ $(echo "$input % 2"|bc) -ne 0 ]]; then
        output_diamonds $input
else
        echo Value not perfect
fi

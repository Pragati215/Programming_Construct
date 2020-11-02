#!/bin/bash -x

echo -n "Enter number : "
read n

    case $(($n)) in
        1) echo -n "unit " ;;
        10) echo -n "ten" ;;
        100) echo -n "hundred" ;;
        1000) echo -n "thousand" ;;
        10000) echo -n "ten thousand " ;;
        *) echo -n " default case " ;;
    esac

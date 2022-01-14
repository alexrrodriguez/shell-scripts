#!/bin/sh

echo "Enter the name of a country: "
read COUNTRY
echo "The officail language of $COUNTRY is "

case $COUNTRY in 

  Lithuania)
    echo "Lithuanian"
    ;;

  Romania | Moldova)
    echo "Romanian"
    ;;

  Italy | "San Marino" | Switzerland | "Vatican City")
    echo "Italian"
    ;;

  *)
    echo "unkown"
    ;;

esac
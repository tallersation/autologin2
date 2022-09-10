#!/bin/bash

while true
do
    magic=$(curl -s google.com | cut -d "?" -f 2 | cut -d "\"" -f 1)
    curl -s https://security.eng.kmutnb.ac.th:1003/fgtauth?"$magic"

    resp=$(curl -d --request POST 'https://security.eng.kmutnb.ac.th:1003' --data "username=s6301023611038" --data "password=Koonname@221e" --data "magic=$magic" --data "4Tredir=google.com")
    if [[ $resp == "co cotunue." ]]; then
        echo "Logged in"
    fi
    sleep 5
done

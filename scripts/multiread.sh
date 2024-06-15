#!/bin/bash


function nfcnfc() {
    echo -e "Enter the VERIFICATION COMMAND given to you by Cloudflare: \c";
    read vfc;
    echo -e "Enter the API TOKEN string: \c";
    read tknstr;
    echo -e "Enter the expiration date of the token: \c";
    read expiration;
    #echo -e "Purpose of the token: \c";
    #read security;
    echo -e "The card is: $card, $number, $expiration, $security";
}


function multiread() {
    for i in {1..3}; 
     do echo -e "\n\nREADY: Reading number $i"; 
        eval "$(ncardr)";
     done
}

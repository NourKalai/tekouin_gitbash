#!/bin/bash

# Read the content of the file /etc/passwd using the while loop and IFS
while IFS=: read -r username password userid groupid userinfo homedir shell; do
    echo "The user $username is part of the $groupid gang, lives in $homedir and rides $shell."
    echo "User ID's place is protected by the passcode $password, more info about the user here: $userinfo"
    echo
done < /etc/passwd

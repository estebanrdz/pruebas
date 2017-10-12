#!/usr/bin/env bash

declare -a followers=$(curl -s  -u jamj2000:967af1d4939334b7993dbdc0385f9e9b27009d1b  https://api.github.com/users/jamj2000/followers | grep login | tr '\n' ' ' | sed 's/[\"\ ,]//g;s/login:/ /g;s/^/\(/;s/$/\)/')

for i in ${followers[*]}; do
  curl -s -u jamj2000:967af1d4939334b7993dbdc0385f9e9b27009d1b  https://api.github.com/users/$i | grep name  | sed 's/[\",]//g;s/name:/ /g' | tr '\n' ' ' 
  echo "https://api.github.com/users/$i";
  
done;





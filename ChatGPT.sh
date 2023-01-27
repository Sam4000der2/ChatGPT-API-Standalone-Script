#!/bin/sh

echo '$0: Script Name: '$0
echo '$1: Keyword: '$1
echo 'Temperature: '0.7

echo "\nInput": $1
echo "\nOutput:"

curl=cat <<EOS
curl https://api.openai.com/v1/completions \
  -H 'Content-Type: application/json' \
  -H "Authorization: Bearer [Insert_API_Key_here] 
  -d '{
  "model": "text-davinci-003",
  "prompt": "$1",
  "max_tokens": 4000,
  "temperature": 0.7

}' \
--insecure | jq '.choices[]'.text
EOS

eval ${curl}

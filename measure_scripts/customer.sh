# /bin/bash
url=$1
epoch_num=${2:-20}
sleep=${3:-false}
sleep_time=${4:-1}

for i in {1..40}
do
    curl -w "@curl-format.txt" -w  "@curl-format.txt"  -X  POST \
        --header "Content-Type: application/json" -d '{"creditLimit": {"amount": 500},"name": "Test User"}' \
        $url
    if $sleep
    then
        sleep $sleep_time
    fi
done
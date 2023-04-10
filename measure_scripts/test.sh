# /bin/bash
url=$1
epoch_num=${2:-20}
sleep_time=${3:-10}

# http://dev-lb-services-1719895573.us-west-2.elb.amazonaws.com/customers
for i in {1..=$epoch_num}
do
    echo $url
done
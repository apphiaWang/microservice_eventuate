# call create customer every 10 seconds
# 20 API calls
url=$1
for i in {1..40}
do
    curl -w "@curl-format.txt" $url
done
#!/bin/bash



DOMAINS=("google.com" "baidu.cn" "vk.com" "nhk.or.jp" "bbc.co.uk" "globo.com" "yandex.ru" "lemonde.fr" "abc.net.au" "tweakers.net")
SERVER1="192.168.1.3"
SERVER2=("1.1.1.1" "8.8.8.8" "9.9.9.9")  # Cloudflare, Google, Quad9
ITERATIONS=3

get_avg_time() {
    local server=$1
    local domain=$2
    local total=0
    for ((i=1; i<=ITERATIONS; i++)); do
        time=$(dig @$server $domain +noall +stats | grep 'Query time' | awk '{print $4}')
        [[ -z "$time" ]] && { echo "Error: No response from $server for $domain"; return 1; }
        total=$((total + time))
        sleep 1
    done
    avg=$(echo "scale=2; $total / $ITERATIONS" | bc)
    echo "$avg"
}

echo "Starting DNS speed test for ${#DOMAINS[@]} domains..."
echo "----------------------------------------"
for domain in "${DOMAINS[@]}"; do
    echo "Testing $domain..."
    avg1=$(get_avg_time $SERVER1 $domain)
    echo "$SERVER1: $avg1 ms"
    random_server=${SERVER2[$RANDOM % ${#SERVER2[@]}]}
    avg2=$(get_avg_time $random_server $domain)
    echo "$random_server: $avg2 ms"
    echo "----------------------------------------"
done
echo "Done! Run again for cached results."

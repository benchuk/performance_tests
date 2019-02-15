# http test

### simple text

## express:

    ./bombardier -c 125 -n 5000000 http://localhost:8080/plaintext

results:
Bombarding http://localhost:8080/plaintext with 5000000 request(s) using 125 connection(s)
5000000 / 5000000 36969/s 2m15s
Done!
Statistics Avg Stdev Max
Reqs/sec 37032.97 4883.28 48234.06
Latency 3.37ms 1.24ms 138.33ms
HTTP codes:
1xx - 0, 2xx - 5000000, 3xx - 0, 4xx - 0, 5xx - 0
others - 0
Throughput: 10.80MB/s

### json response

## express:

    ./bombardier -c 125 -n 5000000 http://localhost:8080/json

results:
Bombarding http://localhost:8080/json with 5000000 request(s) using 125 connection(s)
5000000 / 5000000 37631/s 2m12s
Done!
Statistics Avg Stdev Max
Reqs/sec 37675.05 4320.58 44306.45
Latency 3.32ms 1.25ms 135.97ms
HTTP codes:
1xx - 0, 2xx - 5000000, 3xx - 0, 4xx - 0, 5xx - 0
others - 0
Throughput: 11.57MB/s

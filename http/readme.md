# http simple text

## nodejs: without express

    ./bombardier -c 125 -n 5000000 http://localhost:8080

Bombarding http://localhost:8080 with 5000000 request(s) using 125 connection(s)
5000000 / 5000000 61748/s 1m20s
Done!
Statistics Avg Stdev Max
Reqs/sec _61858.08_ 8105.66 78672.05
Latency 2.02ms 8.02ms 260.96ms
HTTP codes:
1xx - 0, 2xx - 5000000, 3xx - 0, 4xx - 0, 5xx - 0
others - 0
Throughput: _14.28MB/s_

## nodejs:

    ./bombardier -c 125 -n 5000000 http://localhost:8080/plaintext

### results: 10.80MB/s

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

### go

    /bombardier -c 125 -n 5000000 http://localhost:8080/plaintext

### results: 13.26MB/s

Bombarding http://localhost:8080/plaintext with 5000000 request(s) using 125 connection(s)
5000000 / 5000000 70393/s 1m11s
Done!
Statistics Avg Stdev Max
Reqs/sec 70577.05 8874.62 97419.41
Latency 1.77ms 503.37us 58.24ms
HTTP codes:
1xx - 0, 2xx - 5000000, 3xx - 0, 4xx - 0, 5xx - 0
others - 0
Throughput: 13.26MB/s

### java

    ./bombardier -c 1000 -n 5000000 http://localhost:8080/plaintext

### results: 14.04MB/s

./bombardier -c 1000 -n 5000000 http://localhost:8080/plaintext
Bombarding http://localhost:8080/plaintext with 5000000 request(s) using 1000 connection(s)
5000000 / 5000000 60445/s 1m22s
Done!
Statistics Avg Stdev Max
Reqs/sec 60547.34 7844.31 81242.65
Latency 16.51ms 22.52ms 2.36s
HTTP codes:
1xx - 0, 2xx - 4995700, 3xx - 0, 4xx - 4300, 5xx - 0
others - 0
Throughput: 14.04MB/s

======================================================

# http json response

## nodejs:

    ./bombardier -c 125 -n 5000000 http://localhost:8080/json

### results: 11.57MB/s

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

./bombardier -c 1000 -n 5000000 http://localhost:8080/json
Bombarding http://localhost:8080/json with 5000000 request(s) using 1000 connection(s)
5000000 / 5000000 36174/s 2m18s
Done!
Statistics Avg Stdev Max
Reqs/sec 36206.67 5089.94 64656.94
Latency 27.62ms 20.79ms 3.20s
HTTP codes:
1xx - 0, 2xx - 4988400, 3xx - 0, 4xx - 11600, 5xx - 0
others - 0
Throughput: 11.12MB/s

## java: rapidoid

    ./bombardier -c 125 -n 5000000 http://localhost:8080/json

### results: 14.23MB/s

Bombarding http://localhost:8080/json with 5000000 request(s) using 125 connection(s)
5000000 / 5000000 61023/s 1m21s
Done!
Statistics Avg Stdev Max
Reqs/sec 61166.63 7122.61 81678.24
Latency 2.04ms 559.69us 81.60ms
HTTP codes:
1xx - 0, 2xx - 5000000, 3xx - 0, 4xx - 0, 5xx - 0
others - 0
Throughput: 14.23MB/s

./bombardier -c 1000 -n 5000000 http://localhost:8080/json
Bombarding http://localhost:8080/json with 5000000 request(s) using 1000 connection(s)
5000000 / 5000000 61088/s 1m21s
Done!
Statistics Avg Stdev Max
Reqs/sec 61159.44 8289.76 92610.75
Latency 16.34ms 29.51ms 3.62s
HTTP codes:
1xx - 0, 2xx - 4995900, 3xx - 0, 4xx - 4100, 5xx - 0
others - 0
Throughput: 14.18MB/s

## go

    /bombardier -c 125 -n 5000000 http://localhost:8080/json

### results: 12.54MB/s

Bombarding http://localhost:8080/json with 5000000 request(s) using 125 connection(s)
5000000 / 5000000 65373/s 1m16s
Done!
Statistics Avg Stdev Max
Reqs/sec 65448.01 9876.97 92920.90
Latency 1.91ms 752.83us 162.26ms
HTTP codes:
1xx - 0, 2xx - 5000000, 3xx - 0, 4xx - 0, 5xx - 0
others - 0
Throughput: 12.54MB/s

./bombardier -c 1000 -n 5000000 http://localhost:8080/json
Bombarding http://localhost:8080/json with 5000000 request(s) using 1000 connection(s)
5000000 / 5000000 66958/s 1m14s
Done!
Statistics Avg Stdev Max
Reqs/sec 67081.95 8656.57 99479.43
Latency 14.91ms 25.65ms 4.08s
HTTP codes:
1xx - 0, 2xx - 4999000, 3xx - 0, 4xx - 1000, 5xx - 0
others - 0
Throughput: 12.86MB/s

curl \
-d '{"host": "242.1.255.253", "port": "50020", "count": "10"}' \
-H "Content-Type: application/json" \ 
-X POST http://10.55.89.61:8080/api/v1/network/measure/throughput

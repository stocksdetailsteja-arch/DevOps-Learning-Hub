# Day 08 - ELK Stack Commands

## Verify Java

java -version

## Download Elasticsearch

wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch.tar.gz

## Download Kibana

wget https://artifacts.elastic.co/downloads/kibana/kibana.tar.gz

## Download Logstash

wget https://artifacts.elastic.co/downloads/logstash/logstash.tar.gz

## Start Elasticsearch

sudo systemctl start elasticsearch

## Check Elasticsearch Status

sudo systemctl status elasticsearch

## Start Kibana

sudo systemctl start kibana

## Check Kibana Status

sudo systemctl status kibana

## Start Logstash

sudo systemctl start logstash

## Check Logstash Status

sudo systemctl status logstash

## Verify Elasticsearch

curl localhost:9200

## Check Elasticsearch Health

curl localhost:9200/_cluster/health

## View Indices

curl localhost:9200/_cat/indices

## Verify Kibana

http://SERVER-IP:5601

## View Logs

journalctl -u elasticsearch

journalctl -u kibana

journalctl -u logstash


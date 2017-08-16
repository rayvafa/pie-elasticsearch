# Elasticsearch for pie shop

### Building Docker image
`docker build --tag=pie-elasticsearch .`

### Running the docker image
`docker run --rm -ti -p 9200:9200 -p 9300:9300 -e "http.host=0.0.0.0" -e "transport.host=127.0.0.1"  pie-elasticsearch`

### Health Check
`curl -u elastic http://127.0.0.1:9200/_cat/health`

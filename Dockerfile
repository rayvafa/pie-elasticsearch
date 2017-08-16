FROM docker.elastic.co/elasticsearch/elasticsearch:5.5.1

# Mount elasticsearch.yml config
ADD elasticsearch.yml /usr/share/elasticsearch/config/
USER root
RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
USER elasticsearch

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin remove x-pack

# Install elasticsearch-hq plugin
#RUN /usr/share/elasticsearch/bin/plugin install --batch royrusso/elasticsearch-HQ

# Install elasticsearch-head plugin
#RUN /usr/share/elasticsearch/bin/plugin install --batch mobz/elasticsearch-head

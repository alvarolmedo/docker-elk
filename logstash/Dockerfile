ARG ELK_VERSION

# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash-oss:${ELK_VERSION}

# Add your logstash plugins setup here
# Example: RUN logstash-plugin install logstash-filter-json

#Added to parse nginx logs
ADD pattern /opt/logstash/pattern
#RUN chown -R logstash:logstash /opt/logstash/pattern
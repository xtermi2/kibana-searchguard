FROM docker.elastic.co/kibana/kibana:6.4.3

RUN bin/kibana-plugin install https://search.maven.org/remotecontent?filepath=com/floragunn/search-guard-kibana-plugin/6.4.3-15/search-guard-kibana-plugin-6.4.3-15.zip

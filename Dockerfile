FROM docker.elastic.co/kibana/kibana:6.3.2

RUN bin/kibana-plugin install https://search.maven.org/remotecontent?filepath=com/floragunn/search-guard-kibana-plugin/6.3.2-15/search-guard-kibana-plugin-6.3.2-15.zip

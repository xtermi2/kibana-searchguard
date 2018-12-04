FROM docker.elastic.co/kibana/kibana-oss:6.2.3

ENV KIBANA_VERSION "6.2.3"
ENV SG_VERSION "15"

RUN bin/kibana-plugin install https://search.maven.org/remotecontent?filepath=com/floragunn/search-guard-kibana-plugin/${KIBANA_VERSION}-${SG_VERSION}/search-guard-kibana-plugin-${KIBANA_VERSION}-${SG_VERSION}.zip \
    && chmod -R a+rw /usr/share/kibana/optimize \
    && ls -al /usr/share/kibana/optimize \
    && chmod -R a+rw /usr/share/kibana/data \
    && ls -al /usr/share/kibana/data

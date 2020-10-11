FROM docker.elastic.co/kibana/kibana-oss:7.9.2

ARG VCS_REF
ARG BUILD_DATE
ARG MICROSCANNER_TOKEN

LABEL description="kibana secured with search-guard"
LABEL org.label-schema.name="kibana-searchguard"
LABEL org.label-schema.description="kibana secured with search-guard"
LABEL org.label-schema.usage="https://github.com/xtermi2/elasticsearch-searchguard/tree/master/example"
LABEL org.label-schema.url="https://github.com/xtermi2/kibana-searchguard"
LABEL org.label-schema.vcs-url="https://github.com/xtermi2/kibana-searchguard"
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.build-date=$BUILD_DATE

ENV KIBANA_VERSION "7.9.2"
ENV SG_VERSION "45.0.0"

RUN bin/kibana-plugin install https://maven.search-guard.com/search-guard-kibana-plugin-release/com/floragunn/search-guard-kibana-plugin/${KIBANA_VERSION}-${SG_VERSION}/search-guard-kibana-plugin-${KIBANA_VERSION}-${SG_VERSION}.zip \
    && chmod -R a+rw /usr/share/kibana/optimize \
    && ls -al /usr/share/kibana/optimize \
    && chmod -R a+rw /usr/share/kibana/data \
    && ls -al /usr/share/kibana/data

#run Aqua MicroScanner - scan for vulnerabilities
RUN curl -L -o /tmp/microscanner https://get.aquasec.com/microscanner \
    && chmod +x /tmp/microscanner \
    && /tmp/microscanner $MICROSCANNER_TOKEN --continue-on-failure \
    && rm -rf /tmp/microscanner
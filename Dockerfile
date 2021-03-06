FROM docker.elastic.co/kibana/kibana:7.13.2

ARG VCS_REF
ARG BUILD_DATE

LABEL description="kibana secured with search-guard"
LABEL org.label-schema.name="kibana-searchguard"
LABEL org.label-schema.description="kibana secured with search-guard"
LABEL org.label-schema.usage="https://github.com/xtermi2/elasticsearch-searchguard/tree/master/example"
LABEL org.label-schema.url="https://github.com/xtermi2/kibana-searchguard"
LABEL org.label-schema.vcs-url="https://github.com/xtermi2/kibana-searchguard"
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.build-date=$BUILD_DATE

ENV KIBANA_VERSION "7.13.2"
ENV SG_VERSION "51.0.0"

RUN bin/kibana-plugin install https://maven.search-guard.com/search-guard-kibana-plugin-release/com/floragunn/search-guard-kibana-plugin/${KIBANA_VERSION}-${SG_VERSION}/search-guard-kibana-plugin-${KIBANA_VERSION}-${SG_VERSION}.zip \
# 'optimize' does not exist sind 7.13.*
# don't know the purpose of this chmod
#    && chmod -R a+rw /usr/share/kibana/src/optimize \
#    && ls -al /usr/share/kibana/src/optimize \
    && chmod -R a+rw /usr/share/kibana/data \
    && ls -al /usr/share/kibana/data
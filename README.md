# Kibana OSS Docker Image with preinstalled Search Guard Plugin and ready to run in OpenShift.
[![](https://images.microbadger.com/badges/version/xtermi2/kibana-searchguard.svg)](https://microbadger.com/images/xtermi2/kibana-searchguard "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/xtermi2/kibana-searchguard.svg)](https://microbadger.com/images/xtermi2/kibana-searchguard "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/commit/xtermi2/kibana-searchguard.svg)](https://microbadger.com/images/xtermi2/kibana-searchguard "Get your own commit badge on microbadger.com")

Have a look at [xtermi2/elasticsearch-searchguard](https://github.com/xtermi2/elasticsearch-searchguard) for a fitting elasticsearch.

Have a look at [xtermi2/elasticsearch-searchguard/example/README.md](https://github.com/xtermi2/elasticsearch-searchguard/tree/master/example) for a complete example in docker-compose with 2 elasticsearch nodes and a kibana.

## How to use
This image can be used in the same way as the [original elastic kibana OSS image](https://www.elastic.co/guide/en/kibana/current/docker.html).
Have also a look at the [searchguard kibana configuration](https://docs.search-guard.com/latest/kibana-authentication-http-basic).
Here is a example how to run it with an existing elasticsearch:
```
docker run \
    -p 5601:5601 \
    -e "ELASTICSEARCH_URL=https://my-elasticsearch:9200" \
    -e "ELASTICSEARCH_USERNAME=kibana" \
    -e "ELASTICSEARCH_PASSWORD=kibana" \
    -e "ELASTICSEARCH_SSL_VERIFICATIONMODE=none" \
    --rm \
    --name kibana-searchguard \
    xtermi2/kibana-searchguard 
```

## User Feedback
### Issues
If you have any problems with or questions about this image, please ask for help through a [GitHub issue](https://github.com/xtermi2/kibana-searchguard/issues).
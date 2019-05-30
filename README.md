# Kibana OSS Docker Image with preinstalled Search Guard Plugin and ready to run in OpenShift

[![](https://images.microbadger.com/badges/version/xtermi2/kibana-searchguard.svg)](https://microbadger.com/images/xtermi2/kibana-searchguard)
[![](https://images.microbadger.com/badges/image/xtermi2/kibana-searchguard.svg)](https://microbadger.com/images/xtermi2/kibana-searchguard)
[![](https://images.microbadger.com/badges/commit/xtermi2/kibana-searchguard.svg)](https://microbadger.com/images/xtermi2/kibana-searchguard)
[![Build Status](https://travis-ci.org/xtermi2/kibana-searchguard.svg?branch=master)](https://travis-ci.org/xtermi2/kibana-searchguard)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/28b12a0ce359462e9b86b2d3860097bd)](https://app.codacy.com/app/xtermi2/kibana-searchguard?utm_source=github.com&utm_medium=referral&utm_content=xtermi2/kibana-searchguard&utm_campaign=Badge_Grade_Dashboard)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![LICENSE](https://img.shields.io/badge/license-Anti%20996-blue.svg)](https://github.com/996icu/996.ICU/blob/master/LICENSE)
[![996.icu](https://img.shields.io/badge/link-996.icu-red.svg)](https://996.icu)

Have a look at [xtermi2/elasticsearch-searchguard](https://github.com/xtermi2/elasticsearch-searchguard) for a fitting elasticsearch.

Have a look at [xtermi2/elasticsearch-searchguard/example/README.md](https://github.com/xtermi2/elasticsearch-searchguard/tree/master/example) for a complete example in docker-compose with 2 elasticsearch nodes and a kibana.

## How to use

This image can be used in the same way as the [original elastic kibana OSS image](https://www.elastic.co/guide/en/kibana/current/docker.html).
Have also a look at the [searchguard kibana configuration](https://docs.search-guard.com/latest/kibana-authentication-http-basic).
Here is a example how to run it with an existing elasticsearch:

```bash
docker run \
    -p 5601:5601 \
    -e "ELASTICSEARCH_HOSTS=https://my-elasticsearch:9200" \
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

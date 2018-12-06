#!/usr/bin/env bash

UP_RC=1; COUNTER=0; echo "wait until kibana is up..."; while [[ UP_RC -ne 0 ]] && [[ COUNTER -lt 30 ]]; do sleep 1; curl -XGET "http://localhost:5601/" >/dev/null 2>&1; UP_RC=$?; echo "kibana status=${UP_RC}"; let COUNTER=COUNTER+1; done; exit ${UP_RC}

#UP_RC=1
#COUNTER=0
#echo "wait until kibana is up..."
#while [[ UP_RC -ne 0 ]] && [[ COUNTER -lt 30 ]]; do
#    sleep 1
#    curl -XGET "http://localhost:5601/" >/dev/null 2>&1
#    UP_RC=$?
#    echo "kibana status=${UP_RC}"
#    let COUNTER=COUNTER+1
#done
#
#exit ${UP_RC}
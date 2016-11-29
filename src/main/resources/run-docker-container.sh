#!/bin/sh

exec java \
    -DLOG_LEVEL=${LOG_LEVEL} \
    -Ds3proxy.endpoint=http://0.0.0.0:80 \
    -Ds3proxy.authorization=${S3PROXY_AUTHORIZATION} \
    -Ds3proxy.identity=${S3PROXY_IDENTITY} \
    -Ds3proxy.credential=${S3PROXY_CREDENTIAL} \
    -Djclouds.provider=${JCLOUDS_PROVIDER} \
    -Djclouds.identity=${JCLOUDS_IDENTITY} \
    -Djclouds.credential=${JCLOUDS_CREDENTIAL} \
    -Djclouds.filesystem.basedir=/data \
    ${S3_JAVA_OPTS} \
    -jar /opt/s3proxy/s3proxy \
    --properties /dev/null

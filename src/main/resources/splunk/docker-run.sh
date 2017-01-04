   docker run --name splunkuniversalforwarder \
     --env SPLUNK_START_ARGS=--accept-license \
     --env SPLUNK_HOME=/banktools/splunkforwarder \
       --env SPLUNK_FORWARD_SERVER=172.31.20.172:9997 \
     --env SPLUNK_USER=ec2-user \
     --volume /var/lib/docker/containers:/host/containers:ro \
     --volume /var/log:/docker/log:ro \
       --volume /var/run/docker.sock:/var/run/docker.sock:ro \
       --volume volume_splunkuf_etc:/banktools/splunkforwarder/etc \
       --volume volume_splunkuf_var:/banktools/splunkforwarder/var \
       splunk/bac_universalforwarder:6.4.4

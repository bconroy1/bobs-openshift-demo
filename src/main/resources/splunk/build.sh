#https://docs.docker.com/engine/reference/commandline/build/
if [ -z $CURRENT ]; then
	CURRENT=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
fi

docker build -t splunk/bac_universalforwarder:6.4.4 $CURRENT
docker build -t splunk/bac_universalforwarder:latest $CURRENT



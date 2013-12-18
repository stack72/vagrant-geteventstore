sudo apt-get update

wget http://ha.geteventstore.com/showcase/EventStore-Mono-v2.5.0rc4.tar.gz

tar -xvzf EventStore-Mono-v2.5.0rc4.tar.gz


if [ ! -f "EventStore-Mono-v2.5.0rc4/singlenode-config.json" ]; then
  echo "file missing"
  cat <<EOF > EventStore-Mono-v2.5.0rc4/singlenode-config.json
{ ip: "192.168.50.11"}
EOF
fi

cd EventStore-Mono-v2.5.0rc4/

./run-singlenode.sh &

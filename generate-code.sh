swagger='{"swaggerUrl":"https://raw.githubusercontent.com/onchain/onchain-shard/master/onchain-swagger-v2.yaml"}'
echo $swagger
download=$(curl -k -X POST -H "content-type:application/json" -d $swagger https://generator.swagger.io/api/gen/clients/ruby)
download=$(echo $download | sed 's/^.*link":"//' | sed 's/"}//')

wget $download -O ruby-client.zip --no-check-certificate

unzip ruby-client.zip

rm -rf ruby-client/spec
rm -rf ruby-client/lib/swagger_client/version.rb

cp -r ruby-client/* .

rm -rf ruby-client
rm ruby-client.zip
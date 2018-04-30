# Update this folder with the latest generated code
content=$(wget https://onchain.io/api-docs -q -O -)
location=$(echo $content | grep -Po '(?<=href=")[^"]*' | grep swagger | sed -e "s/\/\//\//")
echo $location
swagger='{"swaggerUrl":"https://onchain.io'$location'"}'
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
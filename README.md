# swagger_client

SwaggerClient - the Ruby gem for the ONCHAIN.IO API overview

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v2
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swagger_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./swagger_client-1.0.0.gem
```
(for development, run `gem install --dev ./swagger_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'swagger_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO, then add the following in the Gemfile:

    gem 'swagger_client', :git => 'https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'swagger_client'

api_instance = SwaggerClient::AddressAPIApi.new

coin = "\"testnet3\"" # String | The name of the coin i.e. bitcoin

address = "address_example" # String | The public address to lookup


begin
  #Get Balance
  result = api_instance.get_balance(coin, address)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AddressAPIApi->get_balance: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://onchain.io/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwaggerClient::AddressAPIApi* | [**get_balance**](docs/AddressAPIApi.md#get_balance) | **GET** /address/balance/{coin}/{address} | Get Balance
*SwaggerClient::AddressAPIApi* | [**get_balances**](docs/AddressAPIApi.md#get_balances) | **GET** /address/balances/{coin}/{addresses} | Get Balances
*SwaggerClient::AddressAPIApi* | [**get_history**](docs/AddressAPIApi.md#get_history) | **GET** /address/history/{coin}/{addresses} | Get History
*SwaggerClient::AddressAPIApi* | [**get_unspent**](docs/AddressAPIApi.md#get_unspent) | **GET** /address/utxo/{coin}/{addresses} | Get Unspent Outs
*SwaggerClient::TransactionAPIApi* | [**send_tx**](docs/TransactionAPIApi.md#send_tx) | **POST** /transaction/create/{coin} | Create Unsigned Transaction
*SwaggerClient::TransactionAPIApi* | [**send_tx_0**](docs/TransactionAPIApi.md#send_tx_0) | **POST** /transaction/send_raw/{coin} | Send Raw Transaction
*SwaggerClient::TransactionAPIApi* | [**send_tx_1**](docs/TransactionAPIApi.md#send_tx_1) | **POST** /transaction/sign_and_send/{coin} | Sign and Send a Transaction


## Documentation for Models

 - [SwaggerClient::AddrBalance](docs/AddrBalance.md)
 - [SwaggerClient::Balance](docs/Balance.md)
 - [SwaggerClient::Balances](docs/Balances.md)
 - [SwaggerClient::Coin](docs/Coin.md)
 - [SwaggerClient::HashToSign](docs/HashToSign.md)
 - [SwaggerClient::HashesToSign](docs/HashesToSign.md)
 - [SwaggerClient::History](docs/History.md)
 - [SwaggerClient::InlineResponseDefault](docs/InlineResponseDefault.md)
 - [SwaggerClient::Signature](docs/Signature.md)
 - [SwaggerClient::Tx](docs/Tx.md)
 - [SwaggerClient::Utxo](docs/Utxo.md)
 - [SwaggerClient::Vins](docs/Vins.md)
 - [SwaggerClient::Vouts](docs/Vouts.md)


## Documentation for Authorization


### ApiKeyAuth

- **Type**: API key
- **API key parameter name**: X-API-KEY
- **Location**: HTTP header


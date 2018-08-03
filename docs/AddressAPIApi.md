# SwaggerClient::AddressAPIApi

All URIs are relative to *https://onchain.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_balance**](AddressAPIApi.md#get_balance) | **GET** /address/balance/{coin}/{address} | Get Balance
[**get_balances**](AddressAPIApi.md#get_balances) | **GET** /address/balances/{coin}/{addresses} | Get Balances
[**get_history**](AddressAPIApi.md#get_history) | **GET** /address/history/{coin}/{addresses} | Get History
[**get_unspent**](AddressAPIApi.md#get_unspent) | **GET** /address/utxo/{coin}/{addresses} | Get Unspent Outs


# **get_balance**
> Balance get_balance(coin, address, opts)

Get Balance

Returns the satoshi balance, usd balance and user viewable balance for an address. For ERC20 tokens you need to pass in the contract ID and the number of decimal places.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = SwaggerClient::AddressAPIApi.new

coin = "\"testnet3\"" # String | The name of the coin i.e. bitcoin

address = "address_example" # String | The public address to lookup

opts = { 
  contract_id: "6.058968844090876E47", # String | The contract ID of the ERC20 token.
  decimal_places: 18 # Integer | The number of decimal places for this contract.
}

begin
  #Get Balance
  result = api_instance.get_balance(coin, address, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AddressAPIApi->get_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **String**| The name of the coin i.e. bitcoin | 
 **address** | **String**| The public address to lookup | 
 **contract_id** | **String**| The contract ID of the ERC20 token. | [optional] 
 **decimal_places** | **Integer**| The number of decimal places for this contract. | [optional] 

### Return type

[**Balance**](Balance.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_balances**
> Balances get_balances(coin, addresses, opts)

Get Balances

Returns the satoshi balance, usd balance and user viewable balance for a set of addresses

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = SwaggerClient::AddressAPIApi.new

coin = "\"testnet3\"" # String | The name of the coin i.e. bitcoin

addresses = "addresses_example" # String | A comma seperated list of public addresses

opts = { 
  contract_id: "6.058968844090876E47", # String | The contract ID of the ERC20 token.
  decimal_places: 18 # Integer | The number of decimal places for this contract.
}

begin
  #Get Balances
  result = api_instance.get_balances(coin, addresses, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AddressAPIApi->get_balances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **String**| The name of the coin i.e. bitcoin | 
 **addresses** | **String**| A comma seperated list of public addresses | 
 **contract_id** | **String**| The contract ID of the ERC20 token. | [optional] 
 **decimal_places** | **Integer**| The number of decimal places for this contract. | [optional] 

### Return type

[**Balances**](Balances.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_history**
> History get_history(coin, addresses, opts)

Get History

Returns the transaction history for an address or addresses.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = SwaggerClient::AddressAPIApi.new

coin = "\"testnet3\"" # String | The name of the coin i.e. bitcoin

addresses = "addresses_example" # String | A comma seperated list of public addresses

opts = { 
  contract_id: "6.058968844090876E47", # String | The contract ID of the ERC20 token.
  decimal_places: 18 # Integer | The number of decimal places for this contract.
}

begin
  #Get History
  result = api_instance.get_history(coin, addresses, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AddressAPIApi->get_history: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **String**| The name of the coin i.e. bitcoin | 
 **addresses** | **String**| A comma seperated list of public addresses | 
 **contract_id** | **String**| The contract ID of the ERC20 token. | [optional] 
 **decimal_places** | **Integer**| The number of decimal places for this contract. | [optional] 

### Return type

[**History**](History.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_unspent**
> Array&lt;Utxo&gt; get_unspent(coin, addresses)

Get Unspent Outs

Returns the unspent outputs for an address or addresses.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = SwaggerClient::AddressAPIApi.new

coin = "\"testnet3\"" # String | The name of the coin i.e. bitcoin

addresses = "addresses_example" # String | A comma seperated list of public addresses


begin
  #Get Unspent Outs
  result = api_instance.get_unspent(coin, addresses)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AddressAPIApi->get_unspent: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **String**| The name of the coin i.e. bitcoin | 
 **addresses** | **String**| A comma seperated list of public addresses | 

### Return type

[**Array&lt;Utxo&gt;**](Utxo.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




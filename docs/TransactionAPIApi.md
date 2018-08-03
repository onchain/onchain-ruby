# SwaggerClient::TransactionAPIApi

All URIs are relative to *https://onchain.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](TransactionAPIApi.md#create) | **POST** /transaction/create/{coin} | Create Unsigned Transaction
[**send_raw**](TransactionAPIApi.md#send_raw) | **POST** /transaction/send_raw/{coin} | Send Raw Transaction
[**sign_and_send**](TransactionAPIApi.md#sign_and_send) | **POST** /transaction/sign_and_send/{coin} | Sign and Send a Transaction


# **create**
> HashesToSign create(coin, to, from, amount, opts)

Create Unsigned Transaction

Create an unsigned transaction. OnChain returns the transaction for the specified coin in hex format along with a list of hashes that need to be signed.

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

api_instance = SwaggerClient::TransactionAPIApi.new

coin = "\"testnet3\"" # String | The name of the coin i.e. bitcoin

to = "\"2MttUxQo4jjyVtb5Br49WUEy3LZoZuwtba5\"" # String | The address to send coins to.

from = "\"036f3972643ab052f9f77cbaf67f0e517180ac488453bde8cb27e9e3e1d6847d49\"" # String | The addresses we are sending coins from. OnChain will fetch unspent outs from each address in order until the amount to send is met. We use the public hex key of the address not the hash.

amount = 80000 # Integer | The amount we wish to send.

opts = { 
  fee_address: "\"2MttUxQo4jjyVtb5Br49WUEy3LZoZuwtba5\"", # String | An address to send fees to.
  fee_amount: 10000, # Integer | The amount of fees to send.
  miners_fee: 10000 # Integer | The amount to send to the miners.
}

begin
  #Create Unsigned Transaction
  result = api_instance.create(coin, to, from, amount, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionAPIApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **String**| The name of the coin i.e. bitcoin | 
 **to** | **String**| The address to send coins to. | 
 **from** | **String**| The addresses we are sending coins from. OnChain will fetch unspent outs from each address in order until the amount to send is met. We use the public hex key of the address not the hash. | 
 **amount** | **Integer**| The amount we wish to send. | 
 **fee_address** | **String**| An address to send fees to. | [optional] 
 **fee_amount** | **Integer**| The amount of fees to send. | [optional] 
 **miners_fee** | **Integer**| The amount to send to the miners. | [optional] 

### Return type

[**HashesToSign**](HashesToSign.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **send_raw**
> SendStatus send_raw(coin, rawtx)

Send Raw Transaction

Send a transaction onto the network.

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

api_instance = SwaggerClient::TransactionAPIApi.new

coin = "\"testnet3\"" # String | The name of the coin i.e. bitcoin

rawtx = "rawtx_example" # String | The raw signed transaction as a hex string


begin
  #Send Raw Transaction
  result = api_instance.send_raw(coin, rawtx)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionAPIApi->send_raw: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **String**| The name of the coin i.e. bitcoin | 
 **rawtx** | **String**| The raw signed transaction as a hex string | 

### Return type

[**SendStatus**](SendStatus.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sign_and_send**
> SendStatus sign_and_send(coin, body)

Sign and Send a Transaction

Sign and send transaction onto the network.

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

api_instance = SwaggerClient::TransactionAPIApi.new

coin = "\"testnet3\"" # String | The name of the coin i.e. bitcoin

body = SwaggerClient::Signatures.new # Signatures | 


begin
  #Sign and Send a Transaction
  result = api_instance.sign_and_send(coin, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionAPIApi->sign_and_send: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **String**| The name of the coin i.e. bitcoin | 
 **body** | [**Signatures**](Signatures.md)|  | 

### Return type

[**SendStatus**](SendStatus.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




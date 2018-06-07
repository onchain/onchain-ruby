# SwaggerClient::EthereumAPIApi

All URIs are relative to *https://onchain.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](EthereumAPIApi.md#create) | **POST** /ethereum/create/ | Create Unsigned Transaction
[**sign_and_send**](EthereumAPIApi.md#sign_and_send) | **POST** /ethereum/sign_and_send/ | Sign and send transaction.


# **create**
> EthereumToSign create(to, from, amount, opts)

Create Unsigned Transaction

Create an unsigned transaction. OnChain returns the ethereum transaction in hex format along with a hash that would need to be signed.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EthereumAPIApi.new

to = "2.5329069089123447E76" # String | The address to send Ether to.

from = "2.5329069089123447E76" # String | The addresses we are sending ether from.

amount = 80000 # Integer | The amount we wish to send in GWEI.

opts = { 
  gas_price: 10000, # Integer | The gas price to pay.
  gas_limit: 10000 # Integer | The gas limit to use.
}

begin
  #Create Unsigned Transaction
  result = api_instance.create(to, from, amount, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EthereumAPIApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **to** | **String**| The address to send Ether to. | 
 **from** | **String**| The addresses we are sending ether from. | 
 **amount** | **Integer**| The amount we wish to send in GWEI. | 
 **gas_price** | **Integer**| The gas price to pay. | [optional] 
 **gas_limit** | **Integer**| The gas limit to use. | [optional] 

### Return type

[**EthereumToSign**](EthereumToSign.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sign_and_send**
> InlineResponseDefault sign_and_send(to, from, amount, r, s, v, opts)

Sign and send transaction.

Sign and send transaction onto the Ethereum network.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EthereumAPIApi.new

to = "2.5329069089123447E76" # String | The address to send Ether to.

from = "2.5329069089123447E76" # String | The addresses we are sending ether from.

amount = 80000 # Integer | The amount we wish to send in GWEI.

r = "\"37ffbebc90cd580b516d99cc53050e93a6cd5f\"" # String | The signed r value.

s = "\"37ffbebc90cd580b516d99cc53050e93a6cd5f\"" # String | The signed r value.

v = "52" # String | The signed r value.

opts = { 
  gas_price: 10000, # Integer | The gas price to pay.
  gas_limit: 10000 # Integer | The gas limit to use.
}

begin
  #Sign and send transaction.
  result = api_instance.sign_and_send(to, from, amount, r, s, v, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EthereumAPIApi->sign_and_send: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **to** | **String**| The address to send Ether to. | 
 **from** | **String**| The addresses we are sending ether from. | 
 **amount** | **Integer**| The amount we wish to send in GWEI. | 
 **r** | **String**| The signed r value. | 
 **s** | **String**| The signed r value. | 
 **v** | **String**| The signed r value. | 
 **gas_price** | **Integer**| The gas price to pay. | [optional] 
 **gas_limit** | **Integer**| The gas limit to use. | [optional] 

### Return type

[**InlineResponseDefault**](InlineResponseDefault.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




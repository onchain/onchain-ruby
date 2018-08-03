# SwaggerClient::ERC20Api

All URIs are relative to *https://onchain.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ERC20Api.md#create) | **POST** /erc20/create/ | Create Unsigned Transaction
[**sign_and_send**](ERC20Api.md#sign_and_send) | **POST** /erc20/sign_and_send/ | Sign and send transaction.


# **create**
> EthereumToSign create(to, from, amount, contract_id, decimal_places, opts)

Create Unsigned Transaction

Create an unsigned transaction. OnChain returns the ethereum transaction in hex format along with a hash that would need to be signed.

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

api_instance = SwaggerClient::ERC20Api.new

to = "2.5329069089123447E76" # String | The address to send Ether to.

from = "2.5329069089123447E76" # String | The addresses we are sending ether from.

amount = 80000 # Integer | The amount we wish to send in GWEI.

contract_id = "6.058968844090876E47" # String | The contract ID of the ERC20 token.

decimal_places = 18 # Integer | The number of decimal places for this contract.

opts = { 
  gas_price: 10000, # Integer | The gas price to pay.
  gas_limit: 10000 # Integer | The gas limit to use.
}

begin
  #Create Unsigned Transaction
  result = api_instance.create(to, from, amount, contract_id, decimal_places, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ERC20Api->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **to** | **String**| The address to send Ether to. | 
 **from** | **String**| The addresses we are sending ether from. | 
 **amount** | **Integer**| The amount we wish to send in GWEI. | 
 **contract_id** | **String**| The contract ID of the ERC20 token. | 
 **decimal_places** | **Integer**| The number of decimal places for this contract. | 
 **gas_price** | **Integer**| The gas price to pay. | [optional] 
 **gas_limit** | **Integer**| The gas limit to use. | [optional] 

### Return type

[**EthereumToSign**](EthereumToSign.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sign_and_send**
> SendStatus sign_and_send(to, from, amount, contract_id, decimal_places, r, s, v, opts)

Sign and send transaction.

Sign and send transaction onto the Ethereum network.

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

api_instance = SwaggerClient::ERC20Api.new

to = "2.5329069089123447E76" # String | The address to send Ether to.

from = "2.5329069089123447E76" # String | The addresses we are sending ether from.

amount = 80000 # Integer | The amount we wish to send in GWEI.

contract_id = "6.058968844090876E47" # String | The contract ID of the ERC20 token.

decimal_places = 18 # Integer | The number of decimal places for this contract.

r = "\"37ffbebc90cd580b516d99cc53050e93a6cd5f\"" # String | The signed r value.

s = "\"37ffbebc90cd580b516d99cc53050e93a6cd5f\"" # String | The signed r value.

v = "52" # String | The signed r value.

opts = { 
  gas_price: 10000, # Integer | The gas price to pay.
  gas_limit: 10000 # Integer | The gas limit to use.
}

begin
  #Sign and send transaction.
  result = api_instance.sign_and_send(to, from, amount, contract_id, decimal_places, r, s, v, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ERC20Api->sign_and_send: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **to** | **String**| The address to send Ether to. | 
 **from** | **String**| The addresses we are sending ether from. | 
 **amount** | **Integer**| The amount we wish to send in GWEI. | 
 **contract_id** | **String**| The contract ID of the ERC20 token. | 
 **decimal_places** | **Integer**| The number of decimal places for this contract. | 
 **r** | **String**| The signed r value. | 
 **s** | **String**| The signed r value. | 
 **v** | **String**| The signed r value. | 
 **gas_price** | **Integer**| The gas price to pay. | [optional] 
 **gas_limit** | **Integer**| The gas limit to use. | [optional] 

### Return type

[**SendStatus**](SendStatus.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




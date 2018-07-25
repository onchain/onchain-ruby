# SwaggerClient::MultisigApi

All URIs are relative to *https://onchain.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](MultisigApi.md#create) | **POST** /multi_sig/create/{coin} | Create Unsigned Transaction
[**sign_and_send**](MultisigApi.md#sign_and_send) | **POST** /multi_sig/sign_and_send/{coin} | Sign and Send a Transaction


# **create**
> HashesToSign create(coin, body)

Create Unsigned Transaction

Create an unsigned transaction. OnChain returns the transaction for the specified coin in hex format along with a list of hashes that need to be signed.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MultisigApi.new

coin = "\"testnet3\"" # String | 

body = SwaggerClient::MultiSigPayment.new # MultiSigPayment | 


begin
  #Create Unsigned Transaction
  result = api_instance.create(coin, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MultisigApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **String**|  | 
 **body** | [**MultiSigPayment**](MultiSigPayment.md)|  | 

### Return type

[**HashesToSign**](HashesToSign.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sign_and_send**
> InlineResponseDefault sign_and_send(coin, body)

Sign and Send a Transaction

Sign and send transaction onto the network.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MultisigApi.new

coin = "\"testnet3\"" # String | The name of the coin i.e. bitcoin

body = SwaggerClient::Signatures.new # Signatures | 


begin
  #Sign and Send a Transaction
  result = api_instance.sign_and_send(coin, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MultisigApi->sign_and_send: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **String**| The name of the coin i.e. bitcoin | 
 **body** | [**Signatures**](Signatures.md)|  | 

### Return type

[**InlineResponseDefault**](InlineResponseDefault.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




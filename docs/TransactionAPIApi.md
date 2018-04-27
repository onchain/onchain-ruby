# SwaggerClient::TransactionAPIApi

All URIs are relative to *https://onchain.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**send_tx**](TransactionAPIApi.md#send_tx) | **POST** /transaction/send/{coin}/{rawtx} | Send Transaction


# **send_tx**
> InlineResponseDefault send_tx(coin, rawtx)

Send Transaction

Send a transaction onto the network.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TransactionAPIApi.new

coin = "coin_example" # String | The name of the coin i.e. bitcoin

rawtx = "rawtx_example" # String | The raw signed transaction as a hex string


begin
  #Send Transaction
  result = api_instance.send_tx(coin, rawtx)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionAPIApi->send_tx: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **String**| The name of the coin i.e. bitcoin | 
 **rawtx** | **String**| The raw signed transaction as a hex string | 

### Return type

[**InlineResponseDefault**](InlineResponseDefault.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




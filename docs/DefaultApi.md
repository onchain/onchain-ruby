# SwaggerClient::DefaultApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_address_history_coin_addresses_get**](DefaultApi.md#api_address_history_coin_addresses_get) | **GET** /api/address/history/{coin}/{addresses} | 


# **api_address_history_coin_addresses_get**
> Array&lt;History&gt; api_address_history_coin_addresses_get(coin, addresses)



Gets `Person` objects. Optional query param of **size** determines size of returned array 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DefaultApi.new

coin = "coin_example" # String | The name of the coin i.e. bitcoin

addresses = "addresses_example" # String | A comma seperated list of public addresses


begin
  result = api_instance.api_address_history_coin_addresses_get(coin, addresses)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefaultApi->api_address_history_coin_addresses_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **String**| The name of the coin i.e. bitcoin | 
 **addresses** | **String**| A comma seperated list of public addresses | 

### Return type

[**Array&lt;History&gt;**](History.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined




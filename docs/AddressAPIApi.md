# SwaggerClient::AddressAPIApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_balance**](AddressAPIApi.md#get_balance) | **GET** /api/address/{coin}/{addresses} | Get Balance


# **get_balance**
> Balance get_balance(coin, addresses)

Get Balance

Returns the satoshi balance, usd balance and user viewable balance for a set of addresses

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AddressAPIApi.new

coin = "coin_example" # String | The name of the coin i.e. bitcoin

addresses = "addresses_example" # String | A comma seperated list of public addresses


begin
  #Get Balance
  result = api_instance.get_balance(coin, addresses)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AddressAPIApi->get_balance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **String**| The name of the coin i.e. bitcoin | 
 **addresses** | **String**| A comma seperated list of public addresses | 

### Return type

[**Balance**](Balance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined




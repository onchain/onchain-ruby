# SwaggerClient::ExchangeApi

All URIs are relative to *https://onchain.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_trade**](ExchangeApi.md#create_trade) | **GET** /exchange/create_trade/ | Create trade.
[**get_rates**](ExchangeApi.md#get_rates) | **GET** /exchange/get_rates/{coins} | Get rates.
[**verify_trade**](ExchangeApi.md#verify_trade) | **GET** /exchange/verify_trade/ | Verify trade.


# **create_trade**
> InlineResponseDefault1 create_trade(from, to, amount, identifier)

Create trade.

Create the trade and get a deposit address.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ExchangeApi.new

from = "\"bitcoin\"" # String | 

to = "\"bitcoin_gold\"" # String | 

amount = 10000 # Integer | The amount to exchange.

identifier = "\"asd324fdsg\"" # String | Connect the history together.


begin
  #Create trade.
  result = api_instance.create_trade(from, to, amount, identifier)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExchangeApi->create_trade: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **String**|  | 
 **to** | **String**|  | 
 **amount** | **Integer**| The amount to exchange. | 
 **identifier** | **String**| Connect the history together. | 

### Return type

[**InlineResponseDefault1**](InlineResponseDefault1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_rates**
> Object get_rates(coins)

Get rates.

Get current exchange rate for currencies.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ExchangeApi.new

coins = "\"bitcoin,zcash\"" # String | Comma separated list of coins


begin
  #Get rates.
  result = api_instance.get_rates(coins)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExchangeApi->get_rates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coins** | **String**| Comma separated list of coins | 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **verify_trade**
> InlineResponseDefault2 verify_trade(from, to, amount)

Verify trade.

Can we make the requested trade?

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ExchangeApi.new

from = "\"bitcoin\"" # String | 

to = "\"bitcoin_gold\"" # String | 

amount = 10000 # Integer | The amount to exchange.


begin
  #Verify trade.
  result = api_instance.verify_trade(from, to, amount)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExchangeApi->verify_trade: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **String**|  | 
 **to** | **String**|  | 
 **amount** | **Integer**| The amount to exchange. | 

### Return type

[**InlineResponseDefault2**](InlineResponseDefault2.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




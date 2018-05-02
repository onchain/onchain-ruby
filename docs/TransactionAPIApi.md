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

Create an unsigned transaction

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TransactionAPIApi.new

coin = "\"testnet3\"" # String | The name of the coin i.e. bitcoin

to = "\"2MttUxQo4jjyVtb5Br49WUEy3LZoZuwtba5\"" # String | The address to send coins to.

from = "\"2MttUxQo4jjyVtb5Br49WUEy3LZoZuwtba5\"" # String | The addresses we are sending coins from. OnChain will fetch unspent outs from each address in order until the amount to send is met.

amount = 80000 # Integer | The amount we wish to send.

opts = { 
  fee_address: "\"2MttUxQo4jjyVtb5Br49WUEy3LZoZuwtba5\"", # String | An address to send fees to.
  fee_amount: "10000", # String | The amount of fees to send.
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
 **from** | **String**| The addresses we are sending coins from. OnChain will fetch unspent outs from each address in order until the amount to send is met. | 
 **amount** | **Integer**| The amount we wish to send. | 
 **fee_address** | **String**| An address to send fees to. | [optional] 
 **fee_amount** | **String**| The amount of fees to send. | [optional] 
 **miners_fee** | **Integer**| The amount to send to the miners. | [optional] 

### Return type

[**HashesToSign**](HashesToSign.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **send_raw**
> InlineResponseDefault send_raw(coin, rawtx)

Send Raw Transaction

Send a transaction onto the network.

### Example
```ruby
# load the gem
require 'swagger_client'

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

[**InlineResponseDefault**](InlineResponseDefault.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sign_and_send**
> InlineResponseDefault sign_and_send(coin, tx, signatures)

Sign and Send a Transaction

Sign and send transaction onto the network.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TransactionAPIApi.new

coin = "\"testnet3\"" # String | The name of the coin i.e. bitcoin

tx = "tx_example" # String | The raw unsigned transaction as a hex string

signatures = [SwaggerClient::Signature.new] # Array<Signature> | The raw unsigned transaction as a hex string


begin
  #Sign and Send a Transaction
  result = api_instance.sign_and_send(coin, tx, signatures)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TransactionAPIApi->sign_and_send: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coin** | **String**| The name of the coin i.e. bitcoin | 
 **tx** | **String**| The raw unsigned transaction as a hex string | 
 **signatures** | [**Array&lt;Signature&gt;**](Signature.md)| The raw unsigned transaction as a hex string | 

### Return type

[**InlineResponseDefault**](InlineResponseDefault.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




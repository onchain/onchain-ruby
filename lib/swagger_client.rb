=begin
#ONCHAIN.IO API overview

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

# Common files
require 'swagger_client/api_client'
require 'swagger_client/api_error'
require 'swagger_client/version'
require 'swagger_client/configuration'

# Models
require 'swagger_client/models/addr_balance'
require 'swagger_client/models/balance'
require 'swagger_client/models/balances'
require 'swagger_client/models/coin'
require 'swagger_client/models/ethereum_to_sign'
require 'swagger_client/models/hash_to_sign'
require 'swagger_client/models/hashes_to_sign'
require 'swagger_client/models/history'
require 'swagger_client/models/inline_response_default'
require 'swagger_client/models/inline_response_default_1'
require 'swagger_client/models/inline_response_default_2'
require 'swagger_client/models/rate'
require 'swagger_client/models/rates'
require 'swagger_client/models/signature'
require 'swagger_client/models/signatures'
require 'swagger_client/models/tx'
require 'swagger_client/models/utxo'

# APIs
require 'swagger_client/api/address_api_api'
require 'swagger_client/api/erc20_api'
require 'swagger_client/api/ethereum_api_api'
require 'swagger_client/api/exchange_api'
require 'swagger_client/api/transaction_api_api'

module SwaggerClient
  class << self
    # Customize default settings for the SDK using block.
    #   SwaggerClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end

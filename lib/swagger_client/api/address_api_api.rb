=begin
#ONCHAIN.IO API overview

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class AddressAPIApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get Balance
    # Returns the satoshi balance, usd balance and user viewable balance for an address
    # @param coin The name of the coin i.e. bitcoin
    # @param address The public address to lookup
    # @param [Hash] opts the optional parameters
    # @return [Balance]
    def get_balance(coin, address, opts = {})
      data, _status_code, _headers = get_balance_with_http_info(coin, address, opts)
      return data
    end

    # Get Balance
    # Returns the satoshi balance, usd balance and user viewable balance for an address
    # @param coin The name of the coin i.e. bitcoin
    # @param address The public address to lookup
    # @param [Hash] opts the optional parameters
    # @return [Array<(Balance, Fixnum, Hash)>] Balance data, response status code and response headers
    def get_balance_with_http_info(coin, address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AddressAPIApi.get_balance ..."
      end
      # verify the required parameter 'coin' is set
      if @api_client.config.client_side_validation && coin.nil?
        fail ArgumentError, "Missing the required parameter 'coin' when calling AddressAPIApi.get_balance"
      end
      # verify the required parameter 'address' is set
      if @api_client.config.client_side_validation && address.nil?
        fail ArgumentError, "Missing the required parameter 'address' when calling AddressAPIApi.get_balance"
      end
      # resource path
      local_var_path = "/address/balance/{coin}/{address}".sub('{' + 'coin' + '}', coin.to_s).sub('{' + 'address' + '}', address.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Balance')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddressAPIApi#get_balance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Balances
    # Returns the satoshi balance, usd balance and user viewable balance for a set of addresses
    # @param coin The name of the coin i.e. bitcoin
    # @param addresses A comma seperated list of public addresses
    # @param [Hash] opts the optional parameters
    # @return [Balances]
    def get_balances(coin, addresses, opts = {})
      data, _status_code, _headers = get_balances_with_http_info(coin, addresses, opts)
      return data
    end

    # Get Balances
    # Returns the satoshi balance, usd balance and user viewable balance for a set of addresses
    # @param coin The name of the coin i.e. bitcoin
    # @param addresses A comma seperated list of public addresses
    # @param [Hash] opts the optional parameters
    # @return [Array<(Balances, Fixnum, Hash)>] Balances data, response status code and response headers
    def get_balances_with_http_info(coin, addresses, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AddressAPIApi.get_balances ..."
      end
      # verify the required parameter 'coin' is set
      if @api_client.config.client_side_validation && coin.nil?
        fail ArgumentError, "Missing the required parameter 'coin' when calling AddressAPIApi.get_balances"
      end
      # verify the required parameter 'addresses' is set
      if @api_client.config.client_side_validation && addresses.nil?
        fail ArgumentError, "Missing the required parameter 'addresses' when calling AddressAPIApi.get_balances"
      end
      # resource path
      local_var_path = "/address/balances/{coin}/{addresses}".sub('{' + 'coin' + '}', coin.to_s).sub('{' + 'addresses' + '}', addresses.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Balances')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddressAPIApi#get_balances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get History
    # Returns the transaction history for an address or addresses.
    # @param coin The name of the coin i.e. bitcoin
    # @param addresses A comma seperated list of public addresses
    # @param [Hash] opts the optional parameters
    # @return [Array<History>]
    def get_history(coin, addresses, opts = {})
      data, _status_code, _headers = get_history_with_http_info(coin, addresses, opts)
      return data
    end

    # Get History
    # Returns the transaction history for an address or addresses.
    # @param coin The name of the coin i.e. bitcoin
    # @param addresses A comma seperated list of public addresses
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<History>, Fixnum, Hash)>] Array<History> data, response status code and response headers
    def get_history_with_http_info(coin, addresses, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AddressAPIApi.get_history ..."
      end
      # verify the required parameter 'coin' is set
      if @api_client.config.client_side_validation && coin.nil?
        fail ArgumentError, "Missing the required parameter 'coin' when calling AddressAPIApi.get_history"
      end
      # verify the required parameter 'addresses' is set
      if @api_client.config.client_side_validation && addresses.nil?
        fail ArgumentError, "Missing the required parameter 'addresses' when calling AddressAPIApi.get_history"
      end
      # resource path
      local_var_path = "/address/history/{coin}/{addresses}".sub('{' + 'coin' + '}', coin.to_s).sub('{' + 'addresses' + '}', addresses.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<History>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddressAPIApi#get_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Unspent Outs
    # Returns the unspent outputs for an address or addresses.
    # @param coin The name of the coin i.e. bitcoin
    # @param addresses A comma seperated list of public addresses
    # @param [Hash] opts the optional parameters
    # @return [Array<Utxo>]
    def get_unspent(coin, addresses, opts = {})
      data, _status_code, _headers = get_unspent_with_http_info(coin, addresses, opts)
      return data
    end

    # Get Unspent Outs
    # Returns the unspent outputs for an address or addresses.
    # @param coin The name of the coin i.e. bitcoin
    # @param addresses A comma seperated list of public addresses
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Utxo>, Fixnum, Hash)>] Array<Utxo> data, response status code and response headers
    def get_unspent_with_http_info(coin, addresses, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AddressAPIApi.get_unspent ..."
      end
      # verify the required parameter 'coin' is set
      if @api_client.config.client_side_validation && coin.nil?
        fail ArgumentError, "Missing the required parameter 'coin' when calling AddressAPIApi.get_unspent"
      end
      # verify the required parameter 'addresses' is set
      if @api_client.config.client_side_validation && addresses.nil?
        fail ArgumentError, "Missing the required parameter 'addresses' when calling AddressAPIApi.get_unspent"
      end
      # resource path
      local_var_path = "/address/utxo/{coin}/{addresses}".sub('{' + 'coin' + '}', coin.to_s).sub('{' + 'addresses' + '}', addresses.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Utxo>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddressAPIApi#get_unspent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

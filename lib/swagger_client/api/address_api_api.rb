=begin
#<enter your title>

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 0.0.0

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
    # Returns the satoshi balance, usd balance and user viewable balance for a set of addresses
    # @param coin The name of the coin i.e. bitcoin
    # @param addresses A comma seperated list of public addresses
    # @param [Hash] opts the optional parameters
    # @return [Balance]
    def get_balance(coin, addresses, opts = {})
      data, _status_code, _headers = get_balance_with_http_info(coin, addresses, opts)
      return data
    end

    # Get Balance
    # Returns the satoshi balance, usd balance and user viewable balance for a set of addresses
    # @param coin The name of the coin i.e. bitcoin
    # @param addresses A comma seperated list of public addresses
    # @param [Hash] opts the optional parameters
    # @return [Array<(Balance, Fixnum, Hash)>] Balance data, response status code and response headers
    def get_balance_with_http_info(coin, addresses, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AddressAPIApi.get_balance ..."
      end
      # verify the required parameter 'coin' is set
      if @api_client.config.client_side_validation && coin.nil?
        fail ArgumentError, "Missing the required parameter 'coin' when calling AddressAPIApi.get_balance"
      end
      # verify the required parameter 'addresses' is set
      if @api_client.config.client_side_validation && addresses.nil?
        fail ArgumentError, "Missing the required parameter 'addresses' when calling AddressAPIApi.get_balance"
      end
      # resource path
      local_var_path = "/api/address/{coin}/{addresses}".sub('{' + 'coin' + '}', coin.to_s).sub('{' + 'addresses' + '}', addresses.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

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
  end
end

=begin
#ONCHAIN.IO API overview

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class TransactionAPIApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create Unsigned Transaction
    # Create an unsigned transaction. OnChain returns the transaction for the specified coin in hex format along with a list of hashes that need to be signed.
    # @param coin The name of the coin i.e. bitcoin
    # @param to The address to send coins to.
    # @param from The addresses we are sending coins from. OnChain will fetch unspent outs from each address in order until the amount to send is met. We use the public hex key of the address not the hash.
    # @param amount The amount we wish to send.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fee_address An address to send fees to.
    # @option opts [String] :fee_amount The amount of fees to send.
    # @option opts [Integer] :miners_fee The amount to send to the miners.
    # @return [HashesToSign]
    def create(coin, to, from, amount, opts = {})
      data, _status_code, _headers = create_with_http_info(coin, to, from, amount, opts)
      return data
    end

    # Create Unsigned Transaction
    # Create an unsigned transaction. OnChain returns the transaction for the specified coin in hex format along with a list of hashes that need to be signed.
    # @param coin The name of the coin i.e. bitcoin
    # @param to The address to send coins to.
    # @param from The addresses we are sending coins from. OnChain will fetch unspent outs from each address in order until the amount to send is met. We use the public hex key of the address not the hash.
    # @param amount The amount we wish to send.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fee_address An address to send fees to.
    # @option opts [String] :fee_amount The amount of fees to send.
    # @option opts [Integer] :miners_fee The amount to send to the miners.
    # @return [Array<(HashesToSign, Fixnum, Hash)>] HashesToSign data, response status code and response headers
    def create_with_http_info(coin, to, from, amount, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionAPIApi.create ..."
      end
      # verify the required parameter 'coin' is set
      if @api_client.config.client_side_validation && coin.nil?
        fail ArgumentError, "Missing the required parameter 'coin' when calling TransactionAPIApi.create"
      end
      # verify the required parameter 'to' is set
      if @api_client.config.client_side_validation && to.nil?
        fail ArgumentError, "Missing the required parameter 'to' when calling TransactionAPIApi.create"
      end
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling TransactionAPIApi.create"
      end
      # verify the required parameter 'amount' is set
      if @api_client.config.client_side_validation && amount.nil?
        fail ArgumentError, "Missing the required parameter 'amount' when calling TransactionAPIApi.create"
      end
      # resource path
      local_var_path = "/transaction/create/{coin}".sub('{' + 'coin' + '}', coin.to_s)

      # query parameters
      query_params = {}
      query_params[:'to'] = to
      query_params[:'from'] = from
      query_params[:'amount'] = amount
      query_params[:'fee_address'] = opts[:'fee_address'] if !opts[:'fee_address'].nil?
      query_params[:'fee_amount'] = opts[:'fee_amount'] if !opts[:'fee_amount'].nil?
      query_params[:'miners_fee'] = opts[:'miners_fee'] if !opts[:'miners_fee'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HashesToSign')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionAPIApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send Raw Transaction
    # Send a transaction onto the network.
    # @param coin The name of the coin i.e. bitcoin
    # @param rawtx The raw signed transaction as a hex string
    # @param [Hash] opts the optional parameters
    # @return [InlineResponseDefault]
    def send_raw(coin, rawtx, opts = {})
      data, _status_code, _headers = send_raw_with_http_info(coin, rawtx, opts)
      return data
    end

    # Send Raw Transaction
    # Send a transaction onto the network.
    # @param coin The name of the coin i.e. bitcoin
    # @param rawtx The raw signed transaction as a hex string
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponseDefault, Fixnum, Hash)>] InlineResponseDefault data, response status code and response headers
    def send_raw_with_http_info(coin, rawtx, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionAPIApi.send_raw ..."
      end
      # verify the required parameter 'coin' is set
      if @api_client.config.client_side_validation && coin.nil?
        fail ArgumentError, "Missing the required parameter 'coin' when calling TransactionAPIApi.send_raw"
      end
      # verify the required parameter 'rawtx' is set
      if @api_client.config.client_side_validation && rawtx.nil?
        fail ArgumentError, "Missing the required parameter 'rawtx' when calling TransactionAPIApi.send_raw"
      end
      # resource path
      local_var_path = "/transaction/send_raw/{coin}".sub('{' + 'coin' + '}', coin.to_s)

      # query parameters
      query_params = {}
      query_params[:'rawtx'] = rawtx

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponseDefault')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionAPIApi#send_raw\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sign and Send a Transaction
    # Sign and send transaction onto the network.
    # @param coin The name of the coin i.e. bitcoin
    # @param tx The raw unsigned transaction as a hex string
    # @param signatures The list of hashes returned by the create API with the corresponding signatures from your private keys.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponseDefault]
    def sign_and_send(coin, tx, signatures, opts = {})
      data, _status_code, _headers = sign_and_send_with_http_info(coin, tx, signatures, opts)
      return data
    end

    # Sign and Send a Transaction
    # Sign and send transaction onto the network.
    # @param coin The name of the coin i.e. bitcoin
    # @param tx The raw unsigned transaction as a hex string
    # @param signatures The list of hashes returned by the create API with the corresponding signatures from your private keys.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponseDefault, Fixnum, Hash)>] InlineResponseDefault data, response status code and response headers
    def sign_and_send_with_http_info(coin, tx, signatures, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionAPIApi.sign_and_send ..."
      end
      # verify the required parameter 'coin' is set
      if @api_client.config.client_side_validation && coin.nil?
        fail ArgumentError, "Missing the required parameter 'coin' when calling TransactionAPIApi.sign_and_send"
      end
      # verify the required parameter 'tx' is set
      if @api_client.config.client_side_validation && tx.nil?
        fail ArgumentError, "Missing the required parameter 'tx' when calling TransactionAPIApi.sign_and_send"
      end
      # verify the required parameter 'signatures' is set
      if @api_client.config.client_side_validation && signatures.nil?
        fail ArgumentError, "Missing the required parameter 'signatures' when calling TransactionAPIApi.sign_and_send"
      end
      # resource path
      local_var_path = "/transaction/sign_and_send/{coin}".sub('{' + 'coin' + '}', coin.to_s)

      # query parameters
      query_params = {}
      query_params[:'tx'] = tx
      query_params[:'signatures'] = @api_client.build_collection_param(signatures, :csv)

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponseDefault')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionAPIApi#sign_and_send\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

=begin
#ONCHAIN.IO API overview

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::TransactionAPIApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TransactionAPIApi' do
  before do
    # run before each test
    @instance = SwaggerClient::EthereumAPIApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionAPIApi' do
    it 'should create an instance of TransactionAPIApi' do
      expect(@instance).to be_instance_of(SwaggerClient::EthereumAPIApi)
    end
  end

  describe 'create an ethereum transaction' do
    it "should create an ethereum transaction" do
      
      tx = @instance.create('0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6', 
        '0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6', 
        100000)
      
      puts tx
      
    end
  end

  describe 'sign an ethereum transaction' do
    it "should sign an ethereum transaction" do
      
      result = @instance.sign_and_send('0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6', 
        '0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6', 
        100000, 'xxx', 12,4)
      
      puts result
      
    end
  end

end

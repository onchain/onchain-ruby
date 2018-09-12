require 'spec_helper'
require 'json'


describe 'MultisigApi' do
  before do
    # run before each test
    @instance = SwaggerClient::MultisigApi.new
    
    if ENV['C9_HOSTNAME'] != nil
      SwaggerClient::Configuration.default.host = ENV['C9_HOSTNAME']
    end
    
    if ENV['ONCHAIN_API_KEY'] != nil
      SwaggerClient.configure do |config|
        config.api_key['X-API-KEY'] = ENV['ONCHAIN_API_KEY']
      end
    end
  end

  it 'should create an instance of MultisigApi' do
    expect(@instance).to be_instance_of(SwaggerClient::MultisigApi)
  end

  it 'should create a multi signature transaction' do
      
    rs = SwaggerClient::RedeemScript.new(:public_keys => [
      "02fd89e243d38f4e24237eaac4cd3a6873ce45aa4036ec0c7b79a4d4ac0fefebc4", 
      "0396e42d3c584da0300ee44dcbaee0eccaa0e6ae2264fdd2554af6d2953f95bf99"])
    
    multi_sig = SwaggerClient::MultiSigPayment.new({ 
      :number_of_required_signatures => 2, 
      :redeem_scripts => [rs],
      :to => 'mzYVx2FgY35SFkRNCSUxCGqd4UhXZ7eXmE',
      :fee_address => "",
      :fee_amount => 0,
      :amount => 100000,
      :miners_fee => 40000
    })
    
    tx = @instance.create('testnet3', multi_sig)
    
    expect(tx.tx == nil).to eq(false)
    
  end
end
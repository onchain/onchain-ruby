require 'spec_helper'
require 'json'

describe 'ERC20Api' do
  before do
    # run before each test
    @instance = SwaggerClient::ERC20Api.new
    
    if ENV['C9_HOSTNAME'] != nil
      SwaggerClient::Configuration.default.host = ENV['C9_HOSTNAME']
    end
    
    if ENV['ONCHAIN_API_KEY'] != nil
      SwaggerClient.configure do |config|
        config.api_key['X-API-KEY'] = ENV['ONCHAIN_API_KEY']
      end
    end
  end

  it 'should create an instance of ERC20Api' do
    expect(@instance).to be_instance_of(SwaggerClient::ERC20Api)
  end

  it "should create an erc20 transaction" do
    
    opts = {
      :gas_price => 10_000_000_000,
      :gas_limit => 78046
    }
    
    tx = @instance.create('0xD61C98F88d0a6156e9A7775abF9c1c751658A045', 
      '0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6', 
      1, '0x1175a66a5c3343bbf06aa818bb482ddec30858e0', 18, opts)
    
    # OnChain::Ethereum.create_token_transfer(
    # '0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6', 
    #'0xD61C98F88d0a6156e9A7775abF9c1c751658A045', 
    #'0x1175a66a5c3343bbf06aa818bb482ddec30858e0', 1, 18)
    expect(tx.hash_to_sign).to eq("d627a6982d5da688128a441e7a24d378f449aedb90285c99a6fdf804bb4a1cae")
  end

  it "should sign an erc20 transaction" do
    
    # OnChain::Ethereum.finish_token_transfer('0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6', '0xD61C98F88d0a6156e9A7775abF9c1c751658A045', '0x1175a66a5c3343bbf06aa818bb482ddec30858e0', 1, 18, 'fe9392ed9a3e63a6b1f7de5c695c22e26e4ba20e22f9566e62d9ac75356f17e5', '1594ae60c1ee4df1d62a093849c2d7e9fda05c944f23dfe8b8419c2e1b801e72', 28)
    
    opts = {
      :gas_price => 10_000_000_000,
      :gas_limit => 78046
    }
    
    sig_generated_by_old_code = "7687620a5a8e064c55c93e59b8dc2de1c0a1848e1a64526bbf23a037ba1a9025:12800a54bc8f9010b0b83dd8a98540e6243d0e3ad8b6aba1e10eb52033909a77:28"

    r = sig_generated_by_old_code.split(':')[0]
    s = sig_generated_by_old_code.split(':')[1]
    v = sig_generated_by_old_code.split(':')[2].to_i
    
    result = @instance.sign_and_send('0xD61C98F88d0a6156e9A7775abF9c1c751658A045', 
      '0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6', 
      1, '0x1175a66a5c3343bbf06aa818bb482ddec30858e0', 18, 
      r, s, v, opts)
    
    expect(result.message).to eq("Error validating transaction: Account doesn't exist: 0x61A465821AC770BFd90bA256F66f2C8099f75e8d..")
    
  end

end

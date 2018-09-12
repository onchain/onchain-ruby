require 'spec_helper'
require 'json'

describe 'EthereumAPI' do
  
  before do
    # run before each test
    @instance = SwaggerClient::EthereumAPIApi.new
    
    if ENV['C9_HOSTNAME'] != nil
      SwaggerClient::Configuration.default.host = ENV['C9_HOSTNAME']
    end
    
    if ENV['ONCHAIN_API_KEY'] != nil
      SwaggerClient.configure do |config|
        config.api_key['X-API-KEY'] = ENV['ONCHAIN_API_KEY']
      end
    end
  end
  
  it 'should create an instance of TransactionAPIApi' do
    expect(@instance).to be_instance_of(SwaggerClient::EthereumAPIApi)
  end
  
  it "should create an ethereum transaction" do
    
    tx = @instance.create('0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6', 
      '0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6', 
      100000)
    
    expect(tx.hash_to_sign).to eq("880230b1a3032b214ebb1380218fd11184d047ae0b3f37427e02a117306a90f8")
    
  end
  
  it "should sign an ethereum transaction" do
    
    begin
      result = @instance.sign_and_send('0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6', 
        '0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6', 
        100000, '56182368f51dce92754fcc34ba5f7b61140e45208632f145cf9ec087a600a3a8', 
        '30a8220c206ccf565720315ff2e56c6ffc202c1d5a29afa479b7ea51cb1eb845' , 27)
        
      expect(result.message).to eq("Error validating transaction: Account doesn't exist: 0xCACCBa5982Cc5382C7bBe3a23f6d29D68bDA3ae3..")
    rescue => e
      if e.class == SwaggerClient::ApiError
        expect(true).to eq(e.response_body)
        return
      end
      expect(true).to eq("We shouldn't get here.")
    end
    
  end

end

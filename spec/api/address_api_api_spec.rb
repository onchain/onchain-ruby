require 'spec_helper'
require 'json'

describe 'AddressAPIApi' do
  before do
    # run before each test
    @instance = SwaggerClient::AddressAPIApi.new
    
    if ENV['C9_HOSTNAME'] != nil
      SwaggerClient::Configuration.default.host = ENV['C9_HOSTNAME']
    end
    
    if ENV['ONCHAIN_API_KEY'] != nil
      SwaggerClient.configure do |config|
        config.api_key['X-API-KEY'] = ENV['ONCHAIN_API_KEY']
      end
    end
  end

  it 'should create an instance of AddressAPIApi' do
    expect(@instance).to be_instance_of(SwaggerClient::AddressAPIApi)
  end

  it "should get an address history" do
    
    hist =  @instance.get_history('bitcoin', '16KBLs5NVpUcrhmcC7eifHuSJjKLufApak')
      
    expect(hist.total_txs).to be > 2
    
  end

  it "should get a token balance" do
    
    opts = {
      :contract_id => "0x1175a66a5c3343bbf06aa818bb482ddec30858e0",
      :decimal_places => 18
    }
    
    begin
      bal =  @instance.get_balances('ethereum', '0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6,0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6', opts)
    rescue => e
      if e.class == SwaggerClient::ApiError
        expect(true).to eq(e.response_body)
        return
      end
      expect(true).to eq("We shouldn't get here.")
    end
    
  end

  it "should work" do
    bal = @instance.get_balance('ethereum', '0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6')
    
    expect(bal.usd_balance).to be > 0
  end

  it "should get an ethereum balance" do
    bal =  @instance.get_balances('ethereum', '0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6,0x46FC2341DC457BA023cF6d60Cb0729E5928A81E6')
    
    expect(bal.addresses.first.unconfirmed_balance).to be > 0
  end

  it "balance for a single address" do
    bal =  @instance.get_balance('bitcoin', '1STRonGxnFTeJiA7pgyneKknR29AwBM77')
    
    expect(bal.usd_balance).to be > 0
  end

  it "should work" do
    bals = @instance.get_balances(SwaggerClient::Coin::BITCOIN, '1STRonGxnFTeJiA7pgyneKknR29AwBM77,1HT7xU2Ngenf7D4yocz2SAcnNLW7rK8d4E')
    
    expect(bals.addresses.size).to be > 0
  end

end

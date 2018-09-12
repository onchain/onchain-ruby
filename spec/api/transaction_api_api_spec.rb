require 'spec_helper'
require 'json'

describe 'TransactionAPIApi' do
  before do
    # run before each test
    @instance = SwaggerClient::TransactionAPIApi.new
    
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
    expect(@instance).to be_instance_of(SwaggerClient::TransactionAPIApi)
  end

  it "should create a transaction" do
    
    tx = @instance.create('testnet3', 
      'mzYVx2FgY35SFkRNCSUxCGqd4UhXZ7eXmE', 
      '036f3972643ab052f9f77cbaf67f0e517180ac488453bde8cb27e9e3e1d6847d49', 
      100000)
    
    expect(tx.hashes.first.hash_to_sign).to eq("33b6e4a63a639336573106e2f72b55339997be6098214497699b09aceae9b95e")
    
  end

  it "should create a transaction" do
    
    opts = {
        :fee_address =>'t1aZLWNcFHR3apVoMuAPzEjGbdbR2qGfcAw',
        :fee_amount => (0.004 * 100_000_000.0).to_i
    }
    
    tx = @instance.create('zcash', 't1coURaGEsTgaG6Jp8Y2rA2sUppakecfJKC', 
      '028f883177988f212f2f1b89bc0aa1fb0683899c3665b62167b0daa998018f85d7', 
      100000, opts)
    
    expect(tx.hashes.first.hash_to_sign).to eq("b456c1f8a7199e7ab2b6638082b89e5477d7a95de8f540df0825d6debec99311")
    
  end

  it "should create a transaction" do
    
    s = SwaggerClient::Signature.new({
      :hash_to_sign => '68f5a24c8c74ca647c16c9d93b2c91932c5447084d01b8bbf583f9539fcd2938',
      :input_index => 0,
      :signature => '3044022054fb8c202c4a6ace52a3629f1c237d397473d069db93a682616cf44000303f670220132ea795d496f7eda7f765b475d63fe43ce54dbe3939212c9001c181ee027980',
      :public_key => '036f3972643ab052f9f77cbaf67f0e517180ac488453bde8cb27e9e3e1d6847d49'
    })
    
    
    tx = '0100000001c9d5426dcdec405cf28c166ccb0cf83ce8ca18bf003e5388246b717a479586f6010000001976a914569b3f1e217a8741f8ae8309b5dbd9d91f200d4688acffffffff03a0860100000000001976a914d0b53ad490c2074460a42be67276f013cf8e773d88ac801a0600000000001976a914e229651d1ea66dbdfc4ec59f1eb9394559c284c988ace0040700000000001976a914569b3f1e217a8741f8ae8309b5dbd9d91f200d4688ac00000000'
    
    sigs = SwaggerClient::Signatures.new({ :tx => tx, :signatures => [s] })
    
    result = @instance.sign_and_send('testnet3', sigs)
    
    expect(result.status_code).to eq(500)
    
  end

  it "should create a transaction" do
    
    tx = @instance.send_raw('testnet3', '000000')
    
    expect(tx.status_code).to eq(500)
    
  end

end

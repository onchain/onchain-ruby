describe 'MultisigApi' do
  before do
    # run before each test
    @instance = SwaggerClient::MultisigApi.new
    
    if ENV['C9_HOSTNAME'] != nil
      SwaggerClient::Configuration.default.host = ENV['C9_HOSTNAME']
    end
  end

  describe 'test an instance of MultisigApi' do
    it 'should create an instance of MultisigApi' do
      expect(@instance).to be_instance_of(SwaggerClient::MultisigApi)
    end
  end

  describe 'test creating a multi sig payment' do
    it 'should create a multi signature transaction' do
      
      
      rs = SwaggerClient::RedeemScript.new({
        :public_key => '036f3972643ab052f9f77cbaf67f0e517180ac488453bde8cb27e9e3e1d6847d49'
      })
      
      
      scripts = SwaggerClient::MultiSigPayment.new({ 
        :number_of_required_signatures => 2, 
        :redeem_scripts => [rs],
        :to => 'mzYVx2FgY35SFkRNCSUxCGqd4UhXZ7eXmE',
        :amount => 100000,
        :fee_address => '',
        :fee_amount => 0,
        :miners_fee => 40000
      })
      
      tx = @instance.create('testnet3', scripts)
      
      puts tx
      
    end
  end
end
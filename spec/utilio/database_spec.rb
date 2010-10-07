require File.expand_path(File.join(File.dirname(__FILE__), '..', 'spec_helper'))

describe Utilio::Database do
  
  let(:config_file) { 'config/database.yml' }
  
  before :all do
    Utilio::Path.root = File.dirname(__FILE__)
  end
  
  it "should allow you to load a db configuration" do
    lambda {
      Utilio::Database.config(:file => config_file).should_not be_nil
    }.should_not raise_error
  end
  
  it "should default to loading {ROOT}/config/database.yml without an env or file specified" do
    Utilio::Database.config.should include('development','test','production')
  end
  
  it "should load the correct env data" do
    %w( development test production ).each do |env|
      Utilio::Database.config(:environment => env)['database'].should == env
    end
    
    %w( bogus not_there ).each do |env|
      Utilio::Database.config(:environment => env).should be_nil
    end
  end
  
end

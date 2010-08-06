require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Utilio::Database do
  
  let(:config_file) { 'data/database.yml' }
  
  before :all do
    Utilio::Path.root = File.dirname(__FILE__)
  end
  
  it "should allow you to load a db configuration" do
    Utilio::Database.config(file: config_file).should_not be_nil
  end
  
end

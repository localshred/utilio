require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Utilio::Path do
  
  let(:fake_root) { "/my/fake/root" }
  let(:fake_app) { File.join(fake_root, 'app') }
  
  before :each do
    Utilio::Path.root = fake_root
  end
  
  it "should assume the root path without any settings" do
    Utilio::Path.root = nil
    Utilio::Path.root.should == File.expand_path(File.dirname($0))
  end
  
  it "should allow you to set the root path" do
    Utilio::Path.root.should == fake_root
  end
  
  it "should allow path joining with the root path" do
    Utilio::Path.root('another', 'folder').should == File.join(fake_root, 'another', 'folder')
  end
  
  it "should be able to set a root path relatively" do
    abs_path = File.expand_path(File.dirname(__FILE__))
    Utilio::Path.root = File.dirname(__FILE__)
    Utilio::Path.root.should == abs_path
  end
  
  it "should shortcut paths to an application's app folder" do
    Utilio::Path.app.should == fake_app
  end
  
  it "should allow path joining with the app path" do
    Utilio::Path.app('another', 'folder').should == File.join(fake_app, 'another', 'folder')
  end
  
  it "should be able to load yaml files from the root" do
    # pending 'need to test something else'
    Utilio::Path.root = File.dirname(__FILE__)
    Utilio::Path.yaml_file('data', 'path.yml').should have_key('path')
  end
  
end

require 'spec_helper'

describe Testy do
  
  before { @test = Testy.new }
  subject { @test }

  describe '.method' do
    it 'should return 3' do
      @test.method.should == 3
    end
  end

  describe "pending" do
    it "should be cool" do
      pending
    end
  end

end
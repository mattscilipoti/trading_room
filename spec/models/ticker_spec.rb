require 'spec_helper'

describe Ticker do
  before do
    @subject = Ticker.new(:ticker => 'GOOG')
  end

  it "should return :ticker for :to_s" do
    @subject.to_s.should == 'GOOG'
  end
end

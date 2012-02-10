require 'spec_helper'

describe CaseStudy do
  before do
    @subject = Factory.build :case_study
  end

  it { should accept_values_for(:period, :weekly, :daily) }
  it { should_not accept_values_for(:period, :week, :foo) }

  it "should default to :period to weekly" do
    @subject.period.should == :weekly
  end
end

describe CaseStudy, 'class methods' do
  subject { CaseStudy }
  its(:possible_periods) { should == [:weekly, :daily] }
end

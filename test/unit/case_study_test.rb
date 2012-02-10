require 'test_helper'

describe CaseStudy do
  before do
    @subject = Factory.build :case_study
  end

  it "should default to :weekly" do
    @subject.period.must_equal :weekly
  end
end

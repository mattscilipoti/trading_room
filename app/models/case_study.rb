class CaseStudy < ActiveRecord::Base
  after_initialize :default_values
  belongs_to :ticker

  def self.possible_periods
    [:weekly, :daily]
  end


  validates :period, :inclusion => { :in => CaseStudy.possible_periods }

  def default_period
    :weekly
  end


private
  def default_values
    self.period ||= default_period
  end
end

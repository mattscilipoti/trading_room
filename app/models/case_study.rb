class CaseStudy < ActiveRecord::Base
  after_initialize :default_values
  belongs_to :ticker


private
  def default_values
    self.period ||= :weekly
  end
end

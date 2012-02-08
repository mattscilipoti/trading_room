class Ticker < ActiveRecord::Base
  has_many :case_studies

  def to_s
    ticker
  end
end

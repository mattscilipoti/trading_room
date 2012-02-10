class AddPeriodToCaseStudy < ActiveRecord::Migration
  def change
    add_column :case_studies, :period, :string
  end
end

class CreateCaseStudies < ActiveRecord::Migration
  def change
    create_table :case_studies do |t|
      t.references :ticker
      t.datetime :studied_at

      t.timestamps
    end
    add_index :case_studies, :ticker_id
  end
end

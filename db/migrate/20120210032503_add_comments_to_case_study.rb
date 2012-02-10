class AddCommentsToCaseStudy < ActiveRecord::Migration
  def change
    add_column :case_studies, :comment, :text
  end
end

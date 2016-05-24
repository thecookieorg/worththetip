class AddOverallExperienceToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :overall_experience, :integer
  end
end

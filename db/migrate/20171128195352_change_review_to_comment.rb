class ChangeReviewToComment < ActiveRecord::Migration[5.1]
  def change
    rename_column :reviews, :review, :comment
  end
end

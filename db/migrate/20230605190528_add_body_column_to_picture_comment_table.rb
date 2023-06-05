class AddBodyColumnToPictureCommentTable < ActiveRecord::Migration[7.0]
  def change
    add_column :picture_comments, :body, :text
  end
end

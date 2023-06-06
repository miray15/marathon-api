class AddUserIdToPictureComments < ActiveRecord::Migration[7.0]
  def change
    add_column :picture_comments, :user_id, :integer
  end
end

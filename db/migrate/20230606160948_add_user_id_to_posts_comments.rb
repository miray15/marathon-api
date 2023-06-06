class AddUserIdToPostsComments < ActiveRecord::Migration[7.0]
  def change
    add_column :donation_comments, :user_id, :integer
  end
end

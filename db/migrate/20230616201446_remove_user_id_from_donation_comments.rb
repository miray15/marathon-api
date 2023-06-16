class RemoveUserIdFromDonationComments < ActiveRecord::Migration[7.0]
  def change
  
    remove_column :donation_comments, :user_id  
  
  end
end

class CreateDonationComments < ActiveRecord::Migration[7.0]
  def change
    create_table :donation_comments do |t|
      t.text :body

      t.timestamps
    end
  end
end

class CreatePictureComments < ActiveRecord::Migration[7.0]
  def change
    create_table :picture_comments do |t|

      t.timestamps
    end
  end
end

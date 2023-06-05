class User < ApplicationRecord

  has_many:donation_comments
  has_many:picture_comments

  has_secure_password
validates :email, presence: true, uniqueness: true


end

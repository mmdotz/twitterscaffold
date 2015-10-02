class User < ActiveRecord::Base

  has_many :tweets, dependent: :destroy
  has_secure_password
end

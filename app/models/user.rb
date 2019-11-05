class User < ApplicationRecord
  has_many :posts 
  has_many :comments

  #NOTE: lots of these comes from `sample_app_v6` on your machine, modeling covered in Chapter 6 Hartl
  validates :name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i # from Hartl Chapter 6
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX},
                    uniqueness: true
  
  validates :password, presence: true, length: { minimum: 6 }
end





class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 15 }
  validates :email, presence: true, length: { maximum: 300 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

  has_secure_password
  
  VALID_PASSWORD_REGEX =/\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i
  validates :password, presence: true,
            format: { with: VALID_PASSWORD_REGEX,
             message: "は半角8~32文字小文字・数字それぞれ１文字以上含む必要があります"}
end
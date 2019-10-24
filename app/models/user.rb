class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: {maximum: 15}
  validates :email, presence: true
  validates :email,format: /\A[\w\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :password,length: {minimum: 8, maximum: 32}
  validates :password,format: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,100}+\z/i
  
  has_secure_password
end

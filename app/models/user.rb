class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :image


  validates :name, presence: true   #空白は許可しない
  validates :email, presence: true ,uniqueness: true  #空白は許可しない  #被らない
  validates :password, presence: true,   #空白は許可しない
  length: {minimum: 6}   #最低６文字必要とする

end

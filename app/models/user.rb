class User < ActiveRecord::Base

  #devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  #attr_accessor :login

  has_one :cart
  has_many :orders
  has_many :comments

end

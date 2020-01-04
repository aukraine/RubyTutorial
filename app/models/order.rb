class Order < ActiveRecord::Base

  #attr_accessor :user, :user_id

  belongs_to :user

end

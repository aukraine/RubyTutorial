class BlogPost < ActiveRecord::Base

  #attr_accessor :title, :body

  has_many :comments, as: :commentable

end

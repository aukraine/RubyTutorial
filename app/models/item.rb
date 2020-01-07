# frozen_string_literal: true
class Item < ActiveRecord::Base

  # attr_accessor :price, :name, :real, :weight, :description

  validates :price, numericality: { greater_than: 0, allow_nil: true }
  validates :name, :description, presence: true

  after_initialize { puts 'initialized' } # Item.new; Item.first
  # after_save       { puts 'saved' } # Item.save; Item.create; item.update_attributes()
  after_save       :save_image
  after_create     { puts 'created' }
  after_update     { puts 'updated' }
  after_destroy    { puts 'destroyed' } # item.destroy

  # has_and_belongs_to_many :carts

  has_many :positions
  has_many :carts, through: :positions

  has_many :comments, as: :commentable

  has_one :image, as: :imageable

  def image=(i)
    if !image || !new_record?
      @image = Image.create(i.merge({imageable: self}))
    end
  end

  def save_image
    @image
  end

end

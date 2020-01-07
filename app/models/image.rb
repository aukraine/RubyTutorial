class Image < ActiveRecord::Base

  attr_accessor :file, :imageable_id, :imageable_type, :imageable

  # mount_uploader :file, ImageUploader

  belongs_to :imageable, polymorphic: true

end

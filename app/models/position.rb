class Position < ActiveRecord::Base

  #attr_accessor :item_id, :cart_id, :quantity

  belons_to :item
  belons_to :cart

end

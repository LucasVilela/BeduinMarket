class WishListItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :wish_list

end

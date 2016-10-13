class WishList < ActiveRecord::Base
belongs_to :user
has_many :wish_list_items

  def add_product(product_id, wish_list)
    current_item = WishListItem.where({:product_id => product_id, :wish_list_id => wish_list.id}).first
    if current_item
      return
    else
      current_item = WishListItem.create({:product_id => product_id, :wish_list_id => wish_list.id})
    end
  current_item
  end

end

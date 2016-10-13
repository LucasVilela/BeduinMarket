class ChangeWishlistToWishListInWishListItem < ActiveRecord::Migration
  def change
    rename_column :wish_list_items, :wishlist_id, :wish_list_id
  end
end

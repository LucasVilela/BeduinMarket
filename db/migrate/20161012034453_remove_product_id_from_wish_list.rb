class RemoveProductIdFromWishList < ActiveRecord::Migration
  def up
    remove_column :wish_lists, :product_id
  end

  def down
    add_column :wish_lists, :product_id, :integer
  end
end

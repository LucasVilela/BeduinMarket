class CreateWishListItems < ActiveRecord::Migration
  def change
    create_table :wish_list_items do |t|
      t.integer :wishlist_id
      t.integer :product_id

      t.timestamps null: false
    end
  end
end

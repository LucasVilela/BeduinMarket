json.extract! wish_list_item, :id, :wishlist_id, :product_id, :created_at, :updated_at
json.url wish_list_item_url(wish_list_item, format: :json)
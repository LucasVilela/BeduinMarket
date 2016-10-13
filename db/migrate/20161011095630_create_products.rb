class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.text :image,        :array => true, :default => []
      t.decimal :price
      t.boolean :availabe

      t.timestamps null: false
    end
  end
end

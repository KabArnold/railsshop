class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :product_description
      t.decimal :price
      t.integer :quantity_in_stock
      t.string :image_url
      t.float :rating
      t.string :brand
      t.integer :reviews

      t.timestamps
    end
  end
end

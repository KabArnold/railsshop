json.extract! product, :id, :product_name, :product_description, :price, :quantity_in_stock, :image_url, :rating, :brand, :reviews, :created_at, :updated_at
json.url product_url(product, format: :json)

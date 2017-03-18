json.extract! product, :id, :user_id, :name, :content, :quantity, :price, :shipping, :shipping_price, :cash, :created_at, :updated_at
json.url product_url(product, format: :json)

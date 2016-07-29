json.extract! product, :id, :name, :price, :product_type_id, :properties, :created_at, :updated_at
json.url product_url(product, format: :json)
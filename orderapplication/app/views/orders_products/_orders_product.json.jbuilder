json.extract! orders_product, :id, :order_id_id, :product_id_id, :created_at, :updated_at
json.url orders_product_url(orders_product, format: :json)

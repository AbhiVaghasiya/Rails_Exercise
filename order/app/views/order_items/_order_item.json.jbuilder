json.extract! order_item, :id, :title, :user_id, :order_detail_id, :created_at, :updated_at
json.url order_item_url(order_item, format: :json)

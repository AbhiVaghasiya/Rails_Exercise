json.extract! image, :id, :image_name, :image_id, :created_at, :updated_at
json.url image_url(image, format: :json)

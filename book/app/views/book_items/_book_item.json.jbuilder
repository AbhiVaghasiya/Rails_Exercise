json.extract! book_item, :id, :title, :author_id, :publisher_id, :created_at, :updated_at
json.url book_item_url(book_item, format: :json)

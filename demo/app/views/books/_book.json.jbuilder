json.extract! book, :id, :User, :Book_id, :Book_name, :Book_cost, :created_at, :updated_at
json.url book_url(book, format: :json)

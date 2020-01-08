class Createindexinbooks < ActiveRecord::Migration[6.0]
  def change
    add_index :books, :book_name
  end
end

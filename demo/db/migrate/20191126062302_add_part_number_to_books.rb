class AddPartNumberToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :books_number, :string
  end
end

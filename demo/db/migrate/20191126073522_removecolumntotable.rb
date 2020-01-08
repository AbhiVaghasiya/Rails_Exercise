class Removecolumntotable < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :books_number, :string
  end
end

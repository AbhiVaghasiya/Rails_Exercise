class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :user
      t.string :book_id
      t.text :book_name
      t.decimal :book_cost

      t.timestamps
    end
  end
end

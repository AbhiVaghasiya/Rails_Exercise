class ChangeBookPrice < ActiveRecord::Migration[6.0]
  def up
    change_table :books do |t|
      t.change :book_name, :string

    end
  end

  def down
    change_table :books do |t|
      t.change :book_name, :text
    end
  end
end

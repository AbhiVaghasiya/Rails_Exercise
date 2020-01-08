class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :title
      t.integer :user_id
      t.integer :order_detail_id

      t.timestamps
    end
  end
end

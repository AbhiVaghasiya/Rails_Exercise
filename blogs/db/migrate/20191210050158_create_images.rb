class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :image_name
      t.integer :image_id

      t.timestamps
    end
  end
end

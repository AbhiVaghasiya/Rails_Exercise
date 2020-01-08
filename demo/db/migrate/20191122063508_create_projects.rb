class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :manajor_id
      t.string :website
      t.date :strat_date
      t.date :end_date
      t.boolean :active

      t.timestamps
    end
  end
end

class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.string :title
      t.text :description
      t.string :status
      t.integer :user_id
      t.date :start_date
      t.date :end_date
      t.decimal :spend_time
      t.decimal :estimated_time

      t.timestamps
    end
  end
end

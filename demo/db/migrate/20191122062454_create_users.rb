class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name , limite: 100
      t.string :mobile , limite: 15
      t.string :country , limite: 20
      t.string :state , limite: 20, default: 'Gujarat', null: false
      t.string :city , limite: 20, default: 'Surat'
      t.string :gender , limite: 1
      t.string :email , limite: 100
      t.string :role , limite: 10

      t.timestamps
    end
  end
end

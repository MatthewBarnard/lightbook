class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :full_name
      t.string :email
      t.string :tell
      t.string :cell
      t.date :dob
      t.timestamps null: false
    end
  end
end

class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
    t.string :name
      t.float :price
      t.integer :duration
      t.boolean :is_active, default: true
      t.timestamps null: false
    end
  end
end

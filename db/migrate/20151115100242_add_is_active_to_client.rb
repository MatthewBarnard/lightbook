class AddIsActiveToClient < ActiveRecord::Migration
  def change
    add_column :clients, :is_active, :boolean, default: true
  end
end

class AddInDaycareToDonkeys < ActiveRecord::Migration
  def change
    add_column :donkeys, :in_daycare, :boolean
  end
end

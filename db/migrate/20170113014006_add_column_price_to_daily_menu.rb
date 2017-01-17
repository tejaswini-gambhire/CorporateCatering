class AddColumnPriceToDailyMenu < ActiveRecord::Migration[5.0]
  def change
    add_column  :daily_menus, :price, :integer
  end
end

class CreateJoinTableDailyMenuCompany < ActiveRecord::Migration[5.0]
  def change
    create_join_table :companies, :daily_menus do |t|
      t.index [:company_id, :daily_menu_id]
      t.index [:daily_menu_id, :company_id]
    end
  end
end

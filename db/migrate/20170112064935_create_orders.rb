class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :Employee, foreign_key: true
      t.integer :price
      t.references :DailyMenu, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end

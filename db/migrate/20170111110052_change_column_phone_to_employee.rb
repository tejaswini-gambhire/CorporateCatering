class ChangeColumnPhoneToEmployee < ActiveRecord::Migration[5.0]
  def change
    change_column :employees, :phone, :integer, :limit=>10
  end
end

class ChangeColumnPhoneToVendor < ActiveRecord::Migration[5.0]
  def change
    change_column :vendors, :phone, :integer, :limit=>10
  end
end

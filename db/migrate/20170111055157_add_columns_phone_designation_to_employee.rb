class AddColumnsPhoneDesignationToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :phone, :integer
    add_column :employees, :designation, :String
  end
end

class AddColumnLocationToCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :location, :String
  end
end

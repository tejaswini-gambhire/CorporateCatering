class AddColumnEmailToCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :email, :String
  end
end

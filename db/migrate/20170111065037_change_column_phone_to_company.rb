class ChangeColumnPhoneToCompany < ActiveRecord::Migration[5.0]
  def change
    change_column :Companies,:phone,:integer,:limit=>10
  end
end

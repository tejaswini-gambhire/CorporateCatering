class AddReferenceVendorToMenuItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :menu_items, :vendor, foreign_key:true, index:true
  end
end

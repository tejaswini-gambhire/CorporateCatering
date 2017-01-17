class DailyMenu < ApplicationRecord
  has_and_belongs_to_many :menu_items
  has_and_belongs_to_many :companies
  has_many :orders, dependent: :destroy

  before_create :copy_price_of_menuitem

  def copy_price_of_menuitem
    
  end
end

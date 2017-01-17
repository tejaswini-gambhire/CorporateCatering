class Vendor < ApplicationRecord
  
  validates :name, :location, :phone, presence:true
  validates :phone, uniqueness:true
  validates :phone, numericality: { only_integer: true} 
  validates :phone, length: { is: 10}

  has_many :menu_items, dependent: :destroy 

end

class Company < ApplicationRecord
 
  validates :name, :phone, :email, presence: true 
  validates :phone, numericality: { only_integer: true} 
  validates :phone, length: { is: 10}
  validates :email, email_format: {message: "doesnt look like an email address"}

  has_many :employees, dependent: :destroy
  has_and_belongs_to_many :daily_menus
  #before_validation do
    #self.name = name.squish
  #end
  
  accepts_nested_attributes_for :employees

  before_validation :remove_spaces

  def remove_spaces
    self.name = name.squish
  end

end

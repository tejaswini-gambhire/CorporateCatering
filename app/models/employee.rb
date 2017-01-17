class Employee < ApplicationRecord

  validates :email, uniqueness: true
  validates :name, :email, :phone, :designation, presence: true
  validates :phone, numericality: { only_integer: true}
  validates :phone, length: { is: 10}
  validates :email, email_format: {message: "doesnt look like an email address"} 

  belongs_to :company

  before_destroy :hr_present?
  
  def hr_present?
    if(self.designation=='hr')
      count = Employee.where(company_id: self.company_id, designation: 'hr').count
      if(count==1)
        puts "company should have atleast one hr"
        throw :abort
      end
    end
  end

end

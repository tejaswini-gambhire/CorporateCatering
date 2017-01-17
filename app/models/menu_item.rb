class MenuItem < ApplicationRecord
  
  validates :name, :price, presence:true
  validates :veg, inclusion: { in: [true, false] }
  validates :name, uniqueness: {scope: :vendor_id}
  #validates :veg, exclusion: { in: [nil] }
  
  belongs_to :vendor
  has_and_belongs_to_many :daily_menus, dependent: :destroy

  #default_scope { where(veg: true) }
  #def self.veg
    #where(veg:true)
  #end
  scope :veg,-> {where(veg:true)}
=begin
  before_create :exists_menuitem?

  def exists_menuitem?
    if(MenuItem.exists?(:name=>self.name,:vendor_id=>self.vendor_id))
      puts "record already exists"
      throw :abort
    end
  end
=end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  
  vendor1=Vendor.find_or_create_by(name:"Fassos",location:"Baner",phone:9823456123)
  vendor2=Vendor.find_or_create_by(name:"Dominos",location:"Baner",phone:9823456712)
  vendor3=Vendor.find_or_create_by(name:"Rolls Mania",location:"dighi",phone:9923561422)
  vendor4=Vendor.find_or_create_by(name:"Food Panda",location:"Shivaji Nagar",phone:9823752123)
  vendor5=Vendor.find_or_create_by(name:"Eatsome",location:"Baner",phone:9823456124) 
 
  def add_menues(vendor,menu)
   menu.each do |m|
     vendor.menu_items.find_or_create_by(m)
   end
  end
  menu = [{name:"veg roll",price:40,veg:true},{name:"cheese pizza",price:90,veg:true},{name:"chicken roll",price:60,veg:false},{name:"manchurian",price:80,veg:true},{name:"biryani",price:100,veg:false}]
  add_menues(vendor1,menu)

  menu = [{name:"veg kolhapuri",price:130,veg:true},{name:"paneer tikka",price:110,veg:true},{name:"paneer tikka",price:110,veg:true},{name:"veg maratha",price:120,veg:true},{name:"biryani",price:100,veg:false}]
  add_menues(vendor2,menu)

  menu = [{name:"pani puri",price:20,veg:true},{name:"bhel",price:25,veg:true},{name:"dahi vada",price:30,veg:true},{name:"idli",price:50,veg:true},{name:"udid vada",price:40,veg:true}]
  add_menues(vendor3,menu)

  menu = [{name:"thali",price:150,veg:true},{name:"biryani",price:80,veg:false},{name:"chicken",price:100,veg:false},{name:"hakka noodles",price:70,veg:true},{name:"paratha",price:40,veg:true}]
  add_menues(vendor4,menu)

  menu = [{name:"aloo puri",price:50,veg:true},{name:"misal",price:30,veg:true},{name:"fish fry",price:160,veg:false},{name:"chicken curry",price:120,veg:false},{name:"mutton kurma",price:130,veg:false}]
  add_menues(vendor5,menu)
  
  company_info = [{name:"Josh",phone:8564325123,email:"joshsoftwares@gmail.com"},{name:"Thoughtworks",phone:8565325123,email:"thoughtworks@gmail.com"},{name:"Veritas",phone:8764327123,email:"veritas@gmail.com"},{name:"GSLab",phone:9568325123,email:"gslabs@gmail.com"},{name:"Symantec",phone:8564112123,email:"symantec@gmail.com"}]
  
  companies = []
 
  company_info.each do |c|
    companies << Company.find_or_create_by(c)
  end

  hr_info = [{name:"seema jha",email:"seema@joshsoftware.com",phone:8875459561,designation:"hr"},{name:"sujata regoti",email:"sujata@thoughtworks.com",phone:9979458561,designation:"hr"},{name:"padmaja huddar",email:"padmaja@veritas.com",phone:8865469561,designation:"hr"},{name:"monali shinde",email:"monali@gslabs.com",phone:8895489561,designation:"hr"},{name:"niranjan agnihotri",email:"niranjan@symantec.com",phone:9875459541,designation:"hr"}]

  i=0
  for company in companies    
    company.employees.find_or_create_by(hr_info[i])
    i+=1
  end


  #MenuItem.create_or_find_by(name:"veg kolhapuri",price:130,veg:true,)
  #MenuItem.create_or_find_by(name:"paneer tikka",price:110,veg:true,)
  #MenuItem.create_or_find_by(name:"kaju kari",price:120,veg:true,)
  #MenuItem.create_or_find_by(name:"",price:80,veg:true,)
  #MenuItem.create_or_find_by(name:"biryani",price:100,veg:false,)




 

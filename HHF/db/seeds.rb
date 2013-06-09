# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.destroy_all

data = [{title: "MJ Hug", description: "xxx", detail: "xxx", price: 10.00}]

data.each do |product_info|
  m = Product.new
  m.title = product_info[:title]
  m.description = product_info[:description]
  m.detail = product_info[:detail]
  m.price = product_info[:price]
  m.save
end

puts "There are now #{Product.count} products in the database"

class Product < ActiveRecord::Base
  attr_accessible :description, :detail, :price, :title
end

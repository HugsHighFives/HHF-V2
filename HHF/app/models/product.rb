class Product < ActiveRecord::Base
  attr_accessible :description, :detail, :price, :title

    validates :title, presence: true, uniqueness: true

end

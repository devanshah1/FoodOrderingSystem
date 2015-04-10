class MenuItem < ActiveRecord::Base
  belongs_to :restaurant
  attr_accessible :name, :price, :description 
end

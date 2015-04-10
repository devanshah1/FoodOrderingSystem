class Restaurant < ActiveRecord::Base
  belongs_to :restaurant_owner
  has_many :menu_items
  attr_accessible :description, :email, :location, :name, :service_hours, :telephone
end

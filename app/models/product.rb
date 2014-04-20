class Product < ActiveRecord::Base
	belongs_to :event
	belongs_to :owner, class_name: "User", through: :events
end

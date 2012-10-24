class Employee < ActiveRecord::Base
	belongs_to :user
	belongs_to :salon

  attr_accessible :salon_admin, :salon_id, :user_id
end

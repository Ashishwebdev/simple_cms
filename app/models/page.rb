class Page < ActiveRecord::Base

	belongs_to :subject
	has_and_belongs_to_many :admin_users, :join_table =>'pages_admin_users' 
end

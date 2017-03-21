class SectionEdit < ActiveRecord::Base
	belongs_to :admin_user
	belongs_to :section

	validates :admin_user, presence: true
    validates :section, presence: true
end

class Form < ActiveRecord::Base
	validates :First_Name, presence: true
	validates :LAST_Name, presence: true
	validates :Class, presence: true
	validates :Gender, presence: true
end

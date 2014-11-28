class University < ActiveRecord::Base
	has_many :studies, through: :faculties
	has_many :faculties
	seems_rateable # :quality, :speed, :effectiveness
end

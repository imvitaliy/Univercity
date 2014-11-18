class Study < ActiveRecord::Base
	has_many :faculties
	has_many :universities, through: :faculties
end

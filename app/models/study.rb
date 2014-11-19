class Study < ActiveRecord::Base
	has_many :faculties
	has_many :universities, through: :faculties

	def self.search(name)
		where("name like ?", "%#{name}%")
	end
end

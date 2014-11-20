class Study < ActiveRecord::Base
	has_many :faculties
	has_many :universities, through: :faculties

	#def self.search(text)
		#where("name like ?", "%#{text}%")
	#end
end

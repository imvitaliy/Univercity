class Faculty < ActiveRecord::Base
	belongs_to :university
	belongs_to :study

	def self.search(text)
		joins(:study).where("studies.name like ?", "%#{text}%")
	end
end

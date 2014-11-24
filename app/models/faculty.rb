class Faculty < ActiveRecord::Base
	belongs_to :university
	belongs_to :study

	def self.search(text)
		joins(:study, :university).where("studies.name like ? OR universities.city like ?", "%#{text}%","%#{text}%")
	end
end

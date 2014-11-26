class Faculty < ActiveRecord::Base
	belongs_to :university
	belongs_to :study

	scope :order_by_score, -> { order global_score: :desc}

	def self.search(text)
		params = text.split(" ")
		conditions = []
		params.each do |param|
			conditions << "studies.name like '%#{param}%' OR universities.city like '%#{param}%'"
		end
		joins(:study, :university).where(conditions.join(" OR "))
	end
end

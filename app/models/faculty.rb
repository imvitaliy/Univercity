class Faculty < ActiveRecord::Base
	belongs_to :university
	belongs_to :study
end

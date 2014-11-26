class FacultiesController < ApplicationController
	def index
		#@faculties = Faculty.all
		#@faculties_ord = Faculty.all.sort { |a, b| b.global_score.to_i <=> a.global_score.to_i }
		@faculties= Faculty.order_by_score
		if params[:text]
			@faculties = Faculty.order_by_score.search(params[:text])
		end
	end

	def show
		@faculty = Faculty.find(params[:id])
	end

end

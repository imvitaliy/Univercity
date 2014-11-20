class FacultiesController < ApplicationController
	def index
		@faculties = Faculty.all
		if params[:text]
			@faculties = Faculty.search(params[:text])
		end
	end
end

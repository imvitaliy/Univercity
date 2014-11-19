class FacultiesController < ApplicationController
	def index
		@faculties = Faculty.all
		#if params[:text]
			#where(Study.name like?, "%#")
		#end
	end
end

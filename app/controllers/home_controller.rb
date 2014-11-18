class HomeController < ApplicationController
	def index
			@universities= University.all
			#@studies = Study.all
	end
end

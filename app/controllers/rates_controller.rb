class RatesController < ApplicationController
	def create
		SeemsRateable::Rate.create(rate_params)
	end

	private

	def rate_params
		params.require(:rate).permit(:rateable_id, :rateable_type, :stars)
	end
end

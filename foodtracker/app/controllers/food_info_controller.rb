class FoodInfoController < ApplicationController
	def show
		@food_info_list = FoodInfo.all
	end
end

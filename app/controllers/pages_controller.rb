class PagesController < ApplicationController
	def index
		@basic_plan = Plan.find(2)
		@pro_plan = Plan.find(3)
	end
end

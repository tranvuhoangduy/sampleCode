class PagesController < ApplicationController
	def index
		@basic_plan = Plan.find(1)
		@pro_plan = Plan.find(2)
	end
end

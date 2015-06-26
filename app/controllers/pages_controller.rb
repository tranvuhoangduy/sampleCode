class PagesController < ApplicationController
	def index
		@basic_plan = Plan.find_by_name('basic')
		@pro_plan = Plan.find_by_name('pro')
	end
end

class PagesController < ApplicationController
	def index
		@basic_plan = Plan.where(name:'basic')
		@pro_plan = Plan.where(name:'pro')
	end
end

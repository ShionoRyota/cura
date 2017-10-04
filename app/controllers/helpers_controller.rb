class HelpersController < ApplicationController
	def index
		@helpers = Helper.all
	end
end

class HelpersController < ApplicationController
	def index
		@helper = Helper.all
	end

	def new
		@helper = Helper.new
	end

	def create
		@helper = Helper.new(create_params)
		@helper.save
	end


	private
     def create_params
       params.require(:helper).permit(:start, :finish, :text)
     end

end

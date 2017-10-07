class HelpersController < ApplicationController
	def index
	end

	def new
		@helper = Helper.new
	end

	def create
		# @helper = Helper.new(start: create_params[:start], finish: create_params[:finish], text: create_params[:text], woker_id: current_worker.id)
		@helper = current_worker.helpers.build(create_params)
		@helper.save
	end



	private
     def create_params
       params.require(:helper).permit(:start, :finish, :text)
     end

end

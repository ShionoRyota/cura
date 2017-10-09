class HelpersController < ApplicationController
	def index
	  @worker = Helper.joins(:worker).order("updated_at DESC")
	  if current_worker.present?
	  	@helpers = current_worker.helpers
	  end
	 # @personal = User.joins(:personal)
	end

	def new
		@helper = Helper.new
	end

	def create
		# @helper = Helper.new(start: create_params[:start], finish: create_params[:finish], text: create_params[:text], worker_id: current_worker.id)
		@helper = current_worker.helpers.build(create_params)
		@helper.save
		redirect_to helpers_path
	end

	def show
	  @helper = Helper.find(params[:id])
	  @request = @helper.users
	end

	private
     def create_params
       params.require(:helper).permit(:start, :finish, :text)
     end

end

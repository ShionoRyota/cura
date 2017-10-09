class UsersController < ApplicationController
	def index
	  @worker = Helper.joins(:worker).order("id DESC")
	end

	def new
	end

	def create
	 @user = User.create(start: create_params[:start], finish: create_params[:finish], text: create_params[:text], personal_id: current_user.personal_id)
	 @user.save
	end

	def show
      @helper = Helper.find(params[:id])
      @user = User.new
    end

    private
     def create_params
       params.require(:user).permit(:start, :finish, :text)
     end

end

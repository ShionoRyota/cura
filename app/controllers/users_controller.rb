class UsersController < ApplicationController
	def index
	  @worker = Helper.joins(:worker).order("id DESC")
	end

	def new
	end

	def create
	end
end

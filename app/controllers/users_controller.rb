class UsersController < ApplicationController
	def index
	  @worker = Helper.joins(:worker)
	end

	def new
	end

	def create
	end
end

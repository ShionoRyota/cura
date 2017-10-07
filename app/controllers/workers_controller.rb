class WorkersController < ApplicationController

before_action :configure_permitted_parameters, if: :devise_controller?

def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
    end

  def edit
  	@worker = Worker.find(current_worker.id)
  end

  def update
  	worker = Worker.find(current_worker.id)
  	worker.update(worker_params)
  	redirect_to helpers_path
  end

private
def worker_params
	params.require(:worker).permit(:name, :nennrei, :gender, :avatar, :introduce)
end

end

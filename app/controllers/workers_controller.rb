class WorkersController < ApplicationController
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
	params.require(:worker).permit(:name, :nennrei, :gender, :image, :introduce)
end

end

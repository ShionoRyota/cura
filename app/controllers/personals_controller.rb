class PersonalsController < ApplicationController
  def edit
  	@personal = Personal.find(current_personal.id)
  end

  def update
  	personal = Personal.find(current_personal.id)
  	personal.update(personal_params)
  	redirect_to users_path
  end

  private
   def personal_params
	params.require(:personal).permit(:name, :nennrei, :gender, :adress, :introduce)
  end

end

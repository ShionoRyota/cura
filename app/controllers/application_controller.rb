class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def after_sign_out_path_for(resource)
 homes_top_path(resource)
end

def after_sign_in_path_for(resource)
	case resource
	when Worker
 		helpers_path
 	when Personal
 	 	helpers_path
 	end
end



def after_sign_up_path_for(resource)
    case resource
    when Personal
 	 	users_path(resource)
 	end
end





end

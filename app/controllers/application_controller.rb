class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   
rescue_from CanCan::AccessDenied do 
  	redirect_to root_path, notice: "The page you are looking for doesn't exist."
  end
end

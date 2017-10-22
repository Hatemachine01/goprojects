class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :last_name, 
    :email ])
    #in keys you list all the input you want to accept.
  end

  def index
  #loads 2 approved projects to show on the index page
  @popular_projects = Project.where(approved?:true).limit(2)

  end
  
  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || current_user
  end

end

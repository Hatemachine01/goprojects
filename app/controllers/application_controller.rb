class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
  
  @popular_projects = Project.where(approved?:true)

  end
  
  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || current_user
  end

end

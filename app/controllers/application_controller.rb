class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
  #loads 2 approved projects to show on the index page
  @popular_projects = Project.where(approved?:true).limit(2)

  end
  
  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || current_user
  end

end

class AdminsController < ApplicationController
before_action :logged_in_user_admin

def pending
 #fetches all projects awaiting approval
 @pending_projects = Project.where(approved?:false)
end


def approve 
#changes approved? attribute to true
 project = Project.update(params[:id], :approved? => true )
 @approved_projects = Project.where(approved?:true)
render 'profiles/show'
end



	def logged_in_user_admin
	    unless current_user.admin?
	        flash[:danger] = "ACCESS RESTRICTED"
	                redirect_to root_path
	    end
	end
end

class ProfilesController < ApplicationController
before_action :set_user
before_action :authenticate_user!

def show
 if current_user.admin?
  @approved_projects = Project.where(approved?:true)
 else
  @user = current_user 
 end
end


def personal_data
end


def edit

    if @user.update(user_params)
        redirect_to @user
    else
       redirect_to @user, notice: "Something went wrong"   
       flash[:notice] = @user.errors
    end
 end




 private
    def user_params
      params.require(:user).permit(:name,:last_name)
    end

 	def set_user
	  @user = current_user
	end
end

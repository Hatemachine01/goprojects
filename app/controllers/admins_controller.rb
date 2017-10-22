class AdminsController < ApplicationController

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












end

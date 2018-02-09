class AssignmentsController < ApplicationController
  def index
  end

  def new
  	if(current_user.has_role? :Teacher)	
  		@user = User.new
      @user.assignments
  	else
  		redirect_to root_path
  	end
  end

  def create
    debugger
  	assignment = current_user.update(assignment_params)
    
  	if assignment
  		redirect_to root_path
  	else
  		redirect_to root_path
  	end
  end

  private

  def assignment_params
    params.require(:user).permit(assignments_attributes: [:id,:subject, :description, :_destroy,:student_ids => [], :teacher_ids => []])
  end
end

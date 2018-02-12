class AssignmentsController < ApplicationController
  def index
    @assignments = Assignment.all
  end

  def new
  	if(current_user.has_role? :Teacher)	
  		@user = User.new
  	else
  		redirect_to assignments_path
  	end
  end

  def show
    @assignment = Assignment.find(params[:id])
    @assignment_coordinator = AssignmentCoordinator.new
  end

  def create
  	assignment = current_user.update(assignment_params)
  	if assignment
  		redirect_to assignments_path
  	else
  		redirect_to assignments_path
  	end
  end

  def add_assignment_coordinator
    assignment = Assignment.find(params[:assignment_coordinator][:assignment_id])
    assignment_coordinator_params(assignment)
    redirect_to assignments_path
  end

  private

  def assignment_params
    params.require(:user).permit(assignments_attributes: [:id,:subject, :description,:_destroy])
  end

  def assignment_coordinator_params(assignment)
    params[:assignment_coordinator][:user_id].each do |user|
      if user.present?
        user = User.find(user)
        if user.has_role? :Student 
          assignment.assignment_coordinators.create(user_id: user.id,type: "Student")
        else
          assignment.assignment_coordinators.create(user_id: user.id,type: "Teacher")
        end
      end
    end
  end
end

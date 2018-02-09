class AssignmentsController < ApplicationController
  def index
  end

  def new
  	if(current_user.has_role? :Teacher)	
  		@assignment = Assignment.new
  	else
  		redirect_to root_path
  	end
  end

  def create
    debugger
  	assignment = Assignment.new(assignment_params)
  	if assignment.save
  		add_assignment_coordinate(assignment)
  		redirect_to root_path
  	else
  		redirect_to root_path
  	end
  end

  private
  def assignment_params
  	params.require(:assignment).permit(:subject,:description,:assignee_id)
  end

  def add_assignment_coordinate(assignment)
  	params[:teacher].push(current_user.id)
  	params[:teacher].each do |teacher|
  		if teacher.present?
  			AssignmentCoordinate.create(assignment_id: assignment.id ,user_id: teacher)
  		end
  	end
  end
end

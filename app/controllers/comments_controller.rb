class CommentsController < ApplicationController
	skip_before_action :verify_authenticity_token

	def new
		@assignment = Assignment.find(params[:assignment_id])
		@comment=Comment.new
	end

	def create
		assignment = Assignment.find(params[:assignment_id])
		comment_params(assignment)
		if request.xhr?
      respond_to do |format|
        format.js
      end
    end
	end

	private
  def comment_params(assignment)
  	comment = assignment.comments.create(user_id: current_user.id, comment: params[:data])
  end
end

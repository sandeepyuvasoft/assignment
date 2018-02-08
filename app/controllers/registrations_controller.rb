class RegistrationsController < Devise::RegistrationsController
	after_action :add_role_params, only: [:create,:update]

  def new
    super
  end

  def create
    super
  end

  def update
    super
  end

  private

  def add_role_params
  	@user.add_role(params[:role])
  end
end 
class AdminController < ApplicationController
  before_action :authenticete_user, only: :index

  def index
    @rooms = Room.all
    @users = User.all
  end

  def authorize_user
    if current_user.user_attribute != 'admin'
      redirect_to root_path, notice: 'Access DENIED'  
  end
end

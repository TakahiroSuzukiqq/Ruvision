class AdminController < ApplicationController
  before_action :authorize_user, only: :index
  #before_action :authenticate_user! 

  def index
    @rooms = Room.all
    @users = User.all
  end

　 #private

  def authorize_user
    if current_user.has_role? != 'admin'
      redirect_to root_path, notice: 'Access DENIED'  
  end
  
   def set_current_user
    @user = current_user
   end
   
end

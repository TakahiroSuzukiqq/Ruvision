class PagesController < ApplicationController
  def home
  end

  def host_dashboard #* to get approval info.
    @rooms = current_user.rooms
  end
end

class PagesController < ApplicationController
  def home
  end

  def host_dashboard #* to get approval info.
    @rooms = current_user.rooms
  end

  def guest_dashboard #* for guest
    @bookings = current_user.bookings
  end
end

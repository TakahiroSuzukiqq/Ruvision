class ChargesController < ApplicationController
	def new
		# @room = Room.find(params[:r])
	end

	def create
		@booking = Booking.find(params[:id])
	  # Amount in cents
	  @amount = (@booking.room.price * 100).to_i

	  customer = Stripe::Customer.create(
	    :email => params[:stripeEmail],
	    :source  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => "Booking id: #{@booking.id}",
	    :currency    => 'usd'
	  )

		@transaction = Transaction.create(amount: @amount, user_id: current_user.id, booking_id: @booking.id) #to record transaction on the browsers

	rescue Stripe::CardError => e
	  flash[:error] = e.message
    #redirect_to new_charge_path(r: @booking.room.id) #passing param(booking id)
	  redirect_to guestdashboard_path
	end
end
class BookingsController < ApplicationController
 
  def index
  	@bookings = Booking.all
  end

  def show
  	@booking = Booking.find(params[:id])
  	@room = @booking.room_id
  end

  def new
  	@booking = Booking.new
  end

 	def create
		@booking = Booking.new(booking_params)
		if @booking.save
			redirect_to bookings_path
		else
			render :new
		end
	end

  def edit
  	@booking = Booking.find(params[:id])
  end

  def update
  	@booking = Booking.find(params[:id])
  	if @booking.password == params[:booking][:password]
  		if @booking.update(booking_params)
  			redirect_to bookings_path
  		else
  			render :edit
  		end
  	else
  		raise		
  	end
  end

  def destroy
  	@booking = Booking.find(params[:id])
  	@booking.destroy
  	redirect_to bookings_path
  end

  private

	  def booking_params
	  	params.require(:booking).permit(:title, :creator, :attendees, :time, :date, :duration, :room_id, :password)
	  end
end

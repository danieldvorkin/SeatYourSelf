class ReservationsController < ApplicationController
  def new
  	@reservations = Reservation.new
  end

  def create
    @restaurant = load_restaurant
    @reservation = @restaurant.reservations.build(res_params)
    @reservation.user = current_user
    if @reservation.save
      @restaurant.save
      redirect_to root_path, alert: "Reservation made!"
    else
      redirect_to root_path, alert: "Reservation attempt failed"
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to root_path
  end

  def index
  	@reservation = Reservation.all
  end

  private
  def res_params
  	params.require(:reservation).permit(:name, :booking_time, :booking_date, :party_size)
  end

  def load_restaurant
  	@restaurant = Restaurant.find(params[:restaurant_id])
  end
end

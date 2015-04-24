class ReservationsController < ApplicationController
  def new
  	@reservations = Reservation.new
  end

  def create
  	@restaurant = load_restaurant
  	@reservation = Reservation.new(res_params)

  	if @reservation.save
  		redirect_to root_path(@restaurant, @reservation)
  	else
  		render 'restaurants'
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
  	params.require(:reservation).permit(:name, :rest_id, :hours, :party_size)
  end

  def load_restaurant
  	@restaurant = Restaurant.find(params[:rest_id])
  end
end

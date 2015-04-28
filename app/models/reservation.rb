class Reservation < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :user

	validate :room_in_restaurant

	def room_in_restaurant
		if party_size == nil
			errors.add :party_size, "Not a valid party size"
		elsif party_size > restaurant.availability(booking_date, booking_time)
			errors.add :party_size, "is greater than what is available"
		end
	end

end

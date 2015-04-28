class Restaurant < ActiveRecord::Base
	has_many :users, through: :reservations
	has_many :reservations

	def options_for_select_time
		(open_time...close_time).map do |option|
			if option >= 12
				option = (option - 12).to_s
				ampm = "pm"
			else
				option = option.to_s
				ampm = "am"
			end
			if option == "0"
				option = "12"
			end
			["#{option} #{ampm}", option]
		end
	end

	def availability(booking_date, booking_time)
		current_fullness = reservations.where(booking_date: booking_date, booking_time: booking_time).map(&:party_size).sum
		current_fullness = capacity - current_fullness
	end
end

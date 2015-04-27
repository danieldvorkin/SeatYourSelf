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
end

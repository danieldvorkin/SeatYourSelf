module RestaurantsHelper
	def days_of_coming_week
		array = []
		14.times {|n| array << (Time.now + n.days).to_s}
		array
	end
end

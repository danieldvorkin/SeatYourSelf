50.times do
	Restaurant.create(
		name: Faker::Company.name,
		address: Faker::Address.street_address,
		capacity: rand(15..50),
		open_time: rand(11..12),
		close_time: rand(22..24)
	)
end
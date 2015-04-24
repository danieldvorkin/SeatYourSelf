# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.create(
	name: 'Red Lobster',
	address: '123 daniel st',
	hours: 10,
	capacity: 50
)
Restaurant.create(
	name: 'Wendys',
	address: '123 daniel st',
	hours: 14,
	capacity: 30
) 
Restaurant.create(
	name: 'Chipotle',
	address: '123 daniel st',
	hours: 10,
	capacity: 15
)
Restaurant.create(
	name: 'McDonalds',
	address: '123 daniel st',
	hours: 24,
	capacity: 100
)
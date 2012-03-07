# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create([
	{ 
		nickname: 'philipp', 
		name: 'Philipp Spieß', 
		isAdmin: true,
		email: 'philipp.spiess@myxcode.at',
		location: 'Villach, Austria',
		website: 'http://myxcode.at',
		company: 'myx.code'
	}
])
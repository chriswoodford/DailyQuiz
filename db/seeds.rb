# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([
  { id: 1, name: 'Geography' },
  { id: 2, name: 'Entertainment' },
  { id: 3, name: 'History' },
  { id: 4, name: 'Arts & Literature' },
  { id: 5, name: 'Science & Nature' },
  { id: 6, name: 'Sports & Leisure' }
])

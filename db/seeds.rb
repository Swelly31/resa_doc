# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do |index|
	assemblies = Doctor.create!(last_name: Faker::Name.last_name, first_name: Faker::Name.first_name, specialty: Faker::Science.element, postal_code: Faker::Number.number(5))

end

# on crée 5 catégories 
10.times do |index|

	patients = Patient.create!(last_name: Faker::Name.last_name, first_name: Faker::Name.first_name)

end


# on crée 10 articles
10.times do |index|

	appointments = Appointment.create!(date: Faker::Date.forward(23))
end

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

["student", "instructor", "admin"].each do |role|
	Role.find_or_create_by(name: role)
end
instructor = User.find_by(email: "instructor@yopmail.com")
unless instructor
	instructor=User.create(email: "instructor@yopmail.com", password: "123456", role: Role.find_or_create_by(name: 'instructor'))
end
Course.create(user: instructor, name: "k12")

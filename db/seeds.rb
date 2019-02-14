# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

me = User.first

landscaping = RequestCategory.create(category: "Landscaping")
plumbing = RequestCategory.create(category: "Plumbing")
hvac = RequestCategory.create(category: "HVAC")

puts "RequestCategory Count: #{RequestCategory.count}"

pending = RequestStatus.create(status: "Pending")
in_progress = RequestStatus.create(status: "In Progress")
completed = RequestStatus.create(status: "Completed")

puts "RequestStatus Count: #{RequestStatus.count}"

(0..20).each do |i|
  resident = Resident.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email ,
    home_phone: Faker::PhoneNumber.phone_number,
    cell_phone: Faker::PhoneNumber.cell_phone
  )

  address = Address.create(street: Faker::Address.street_address)
end

(0..1000).each do |i|
  rnd_num = rand(1..20)
  resident = Resident.find(rnd_num)
  address = Address.find(rnd_num)

  rnd_num_2 = rand(1..3)
  category = RequestCategory.find(rnd_num_2)
  status = RequestStatus.find(rnd_num_2)

  # MaintenanceRequest
  MaintenanceRequest.create(
    user_id: me.id,
    resident_id: resident.id,
    address_id: address.id,
    request_status_id: status.id,
    request_category_id: category.id,
    request_number: Faker::Number.number(10),
    message: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph(4)
  )

end

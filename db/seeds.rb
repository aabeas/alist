User.create!(
  name: "aaron",
  email: "aaron@example.com",
  password: "password",
  password_confirmation: "password"
)

puts "1 reg user01"

User.create!(
  name: "baron",
  email: "baron@example.com",
  password: "password",
  password_confirmation: "password"
)

puts "1 reg user02"

User.create!(
  name: "caron",
  email: "caron@example.com",
  password: "password",
  password_confirmation: "password"
)

puts "1 reg user03"

User.create!(
  name: "daron",
  email: "daron@example.com",
  password: "password",
  password_confirmation: "password"
)

puts "1 reg user04"

1.times do |todo|
  Todo.create!(
    name: "Raspberry-PI 3 B+ #{todo}",
    description: "Need to order three for creating an augmented shoe...", user_id: User.first.id
  )
end

puts "1 todo post #01 created for user01"

1.times do |todo|
  Todo.create!(
    name: "3D Printer #{todo}",
    description: "Need to order one for creating an toenail!", user_id: User.first.id
  )
end

puts "1 todo post #02 created for user01"

1.times do |todo|
  Todo.create!(
    name: "Clean Garage #{todo}",
    description: "Take grass clippings to the dump.", user_id: User.second.id
  )
end

puts "1 todo post #03 created for user02"

1.times do |todo|
  Todo.create!(
    name: "Shoe Strings #{todo}",
    description: "Purchase five pairs of shoe strings for flying kit...", user_id: User.second.id
  )
end

puts "1 todo post #04 created for user02"

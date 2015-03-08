user = User.new

until user.valid?
  puts "Superuser email:"
  email = STDIN.gets.chomp
  puts "Superuser password:"
  password = STDIN.gets.chomp

  user.update_attributes email: email, password: password, is_admin: true
  puts ""
  puts user.errors.full_messages
  puts ""
end

puts "Superuser was born!"

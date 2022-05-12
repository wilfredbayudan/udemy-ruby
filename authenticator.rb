users = [
  { username: 'wilfred', password: 'test1234' },
  { username: 'bayudan', password: '1234test' }
]

puts 'Welcome to the authenticator'
25.times { print '-' }
puts "\n"
puts 'This program will take input from the user and compare password'
puts 'If password is correct, you will get back the user object'
25.times { print '-' }
puts "\n"

allowed_attempts = 3

# while attempt is > 0 and access granted = false

# ask for username

# find user with matching username

# if password matches user data
# set allowed_attempts 0
# return user

while allowed_attempts >= 1

  puts 'Username:'
  entered_username = gets.chomp

  found_user = users.find { |user| user[:username] == entered_username }

  puts 'Password:'
  entered_password = gets.chomp

  if found_user[:password] == entered_password

    puts 'AUTHENTICATED!'
    found_user
    break

  else

    puts 'Invalid username/password'
    allowed_attempts -= 1

  end

  puts "#{allowed_attempts} attempts remaining."
end

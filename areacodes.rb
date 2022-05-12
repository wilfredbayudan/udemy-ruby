dial_book = {
  'newyork' => '212',
  'newbrunswick' => '732',
  'edison' => '908',
  'plainsboro' => '609',
  'sanfrancisco' => '301',
  'miami' => '305',
  'paloalto' => '650',
  'evanston' => '847',
  'orlando' => '407',
  'lancaster' => '717'
}

# Get city names from the hash
def get_city_names(somehash)
  somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, city)
  somehash[city]
end

# Execution flow
loop do
  # Write your program execution code here
  puts 'Do you want to look up an area code based on a city name?(Y/N)'
  answer = gets.chomp.downcase
  break if answer != 'y'

  puts get_city_names(dial_book)

  puts 'Which city would you like the area code for?'
  city = gets.chomp.downcase
  if dial_book.include?(city)
    puts get_area_code(dial_book, city)
  else
    puts 'You entered an invalid city name'
  end
end

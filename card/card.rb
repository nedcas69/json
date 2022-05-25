require 'json'

data = File.read('card.json')
card = JSON.parse(data)
puts card['last_name']
puts card['first_name']
puts card['second_name']
puts 'мобильный:' + card['phone']
puts "e-mail: " + card['mail']
puts card['about']
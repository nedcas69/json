require 'json'

file = File.read('elements.json')
table_hash = JSON.parse(file)
elements = []
table_hash.each_key { |keys|
    elements << keys
}
puts "выберите элемент/n" + elements.to_s
user_input = STDIN.gets.chomp
table_hash[user_input].each {|keys, values|
    puts keys +' -- '+ values.to_s
}

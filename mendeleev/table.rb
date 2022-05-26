require 'json'

file = File.read('elements.json')
table_hash = JSON.parse(file)
elements = []
table_hash.each_key { |keys|
    elements << keys
}

puts "У нас всего элементов: #{elements.size} "
puts "\n" + elements.to_s

# Спросим пользователя, о каком элементе он хочет узнать
puts "\nО каком элементе хотите узнать?"
element_key = STDIN.gets.chomp

# table_hash[element_key].each {|keys, values|
#     puts keys +' -- '+ values.to_s
# }

# Если такой элемент есть в нашем хэше, покажем информацию о нём
if table_hash.has_key?(element_key)
    element = table_hash[element_key]
    puts "Порядковый номер: #{element['number']}"
    puts "Название: #{element['name']}"
    puts "Первооткрыватель: #{element['discoverer']} (#{element['year']} г.)"
    puts "Плотность: #{element['density']} г/см³"
  else
    puts 'Извините, про такой элемент мы еще не знаем.'
  end
require 'json'

data = File.read('lang.json')
lang_hash = JSON.parse(data)

lang_invert = lang_hash.invert

lang_sort = lang_invert.sort.reverse

most_popular = lang_sort.first

index = 0
puts "Самый популярный язык программирования в России: #{most_popular.last} -- #{most_popular.first} "  
lang_sort.each {|keys, values|
    
    puts " #{index + 1}. " + values + ' -- ' + keys.to_s
    index += 1
}
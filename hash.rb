dict1 = { 'a' => 1, 'b' => 2, 'c' => 3 }
puts dict1

# ruby好像很不喜歡冒號

dict2 = { 'firstname' => 'Joji', 'lastname' => 'brian' }
puts dict2

puts dict1['a']

dict3 = { a: 1, b: 2, c: 3 }
puts dict3[:a]

# 其實ruby也是有冒號的寫法，只不過他會變成符號形式
# 呼叫的時候，前面要加上冒號．帶表示符號

dict2.each do |key, value|
  puts "This is the key - #{key} and the value - #{value}"
end

dict1.each { |key, value| puts "This is the key - #{key} and the value - #{value}" }

dict2.each { |key, value|
  puts "The class of the key is #{key.class} and the class of the value is #{value.class}"
}

dict2.delete('firstname')
puts dict2

dict1['d'] = 'I am String'
puts dict1

dict1.each { |k, v| dict1.delete(k) if v.class == Integer }
puts dict1

dict1.each { |k, v| dict1.delete(k) if v.is_a?(Integer) }
puts dict1

# .is_a?()是內部判別式，可以直接判別class

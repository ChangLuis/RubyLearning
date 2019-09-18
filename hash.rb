dict1 = { 'a' => 1, 'b' => 2, 'c' => 3 }
puts dict1

# ruby好像很不喜歡冒號

dict2 = { 'firstname' => 'Joji', 'lastname' => 'brian' }
puts dict2

puts dict1['a']

dict3 = { a: 1, b: 2, c: 3 }
puts dict3[:a]

dict4 = { :a => 123, :b => 345, :c => 567 }
puts dict4

# 在ruby1.9版以後，有明確的規範一些風格，
# 箭頭盡量不要用來當作符號的指示，當然是可以這樣表達，只不過風格不正確
# 冒號可以用在key是string 或 symbol的情況

p dict4[:d]
# ruby的字典如果要輸出沒有的key 會出現nil 不會像python那樣出錯
# 這在判斷式的使用比較方便 python就必須寫成例如 if 'firstname' in dict2

dict2.each do |key, value|
  puts "This is the key - #{key} and the value - #{value}"
end

dict1.each { |key, value| puts "This is the key - #{key} and the value - #{value}" }

dict2.each do |key, value|
  puts "The class of the key is #{key.class} and the class of the value is #{value.class}"
end

dict2.delete('firstname')
puts dict2

dict1['d'] = 'I am String'
puts dict1

dict1.each { |k, v| dict1.delete(k) if v.class == Integer }
puts dict1

dict1.each { |k, v| dict1.delete(k) if v.is_a?(Integer) }
puts dict1

# .is_a?()是內部判別式，可以直接判別class

people = { 'joe' => 21, 'bill' => 35, 'sally' => 24 }

p people.min_by { |name, age| age }
p people.max_by { |name, age| age }

# 正常來講，hash要比較內容，通常要轉成array才能比較，不過ruby已經在eumerator max_by min_by 寫好method 你可以直接挪用就好
# 而且max_by min_by 生成的array直接幫你把key and value搞成一對，真方便

dict5 = Hash.new(0)
dict5["Jack"] += 1
dict5["Rose"] += 1
p dict5

# 在Hash.new括號內可以加上每個新建的value default值

dict6 = Hash.new
5.times { (dict6[:nums] ||= []) << [*0..10].sample(1)[0] }

p dict6

# 在python dict可以用.get method 來設定初始值，
# Ruby沒有這種method，但是可以用上面這種方式 ||= 來賦予初始值

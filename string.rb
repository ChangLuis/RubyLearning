the_first_string = 'Hello world!'
puts the_first_string
p 'Hello World!'
print 'Hello World!'

# 三種輸出方式，puts 就是python的print 會自動換行
# p 在輸出時，會出現旁邊的引號 會自動換行
# print 在輸出時，不會自動換行，如果用print想要換行，你可以在最後加上\n

greeting = 'Hello World!'
puts greeting
p greeting

def say_hi
  puts 'say_hi,Hello World!'
end

say_hi
# 與python不同的是， python如果呼叫func後面沒有括號，只是讓python載入func
# 但ruby則是打上名稱即可以呼叫，如果需要打入參數，才需要打括號
# 所以像上述這樣就是直接叫出say_hi func

def say_hi_call_value(type_thing)
  puts type_thing
end

say_hi_call_value('Hello world call by parameter')

first_name = 'Chang'
last_name = 'Luis'
puts 'My name is #{first_name} #{last_name}.'
puts "My name is #{first_name} #{last_name}."

# ruby的print format ，不用像python用 .format 或 f
# 內容輸入的模式，#{}，類似js的${}
# 但要記住一件事情，外面必須要用雙引號!!

puts 'This is string'.class
puts 10.class
puts 10.0.class

# 直接在object後面加上 .class
# 這是 Ruby的type

row = 'RubyIsSomethingElse.'

row.each_char do |char|
  p char
end

row.each_char { |char| p char }

# string的內容，如果想要iterate，method用的是each_char 不是each

row.each_char.with_index { |char, index| p char, index }

# 如果要一起操作index 可以用with_index
# with_index 是包含在enumerator class裡面,無法單獨使用

p row.chars

# chars method 主要是將string個別輸出 轉成array

p row.split('')

# split method 功能就跟python split一樣
# 如果在括號內只用'' 效果就跟chars一樣

p 5.to_s(2)

# to_s method 除了可以把數字轉成string 他還可以指定你要用幾進位來轉成string
# 像上面我就轉成二進位的string

p "  whitespace erase".lstrip

# 將左邊的所有空白去掉

p "whitespace erase    ".rstrip

# 將右邊的所有空白去掉

p "   whitespace  ".strip

# 將兩邊的所有空白去掉
# 可惜的是，ruby的strip只能去掉空白，不能去掉自定義的文字
# 所以如果要去掉自定義的內容，必須用正則表示法

p "000001a".sub(/^0*/, "")

# //是某一個範圍，你要自定義的範圍，^是起始位置，*是無數量限制，例如這邊就是無限量的0

p '00110101001'.gsub("01", "0-1")

# 另一種replace method是 gsub 就是只是要符合的內容就會轉換

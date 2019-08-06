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

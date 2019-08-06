num = 10
puts num.methods

# .methods可以看這個object 可以操作的method

num = num.to_s
puts num.class

# to_s 就是 transform 成string
# 其實還有轉整數 轉浮點數 大概都是 to_i  to_f

string_name = 'This is first time I use the Ruby.'
puts string_name.length

# 長度

puts string_name.reverse

# 顛倒順序

puts string_name.empty?

# ruby的object本身可以直接判斷是否為空？  method後面加上?就是代表這是在判斷true or false
# ruby的null稱作nil,而且只能拿來判斷nil....    不能拿來判斷0 or ''

puts ''.nil?

# 這個是false

puts nil.nil?

# true

puts 'type your name'
type_name = gets.chomp
puts "Your name is #{type_name}. Welcome!!"

# gets.chomp就是python的input,不過不能定義文字

puts '-'*20
20.times { print '-' }

# 上面的times 則是可以重複執行某一行指令  .times {}
# 但這樣不就重複呼叫20次？

puts ""
puts 20.even?

# ruby 居然還有奇偶數判斷

puts 'Please input the first number'
num1 = gets.chomp.to_i
puts 'Please input the second number'
num2 = gets.chomp.to_i

puts "The calculation of num1 and num2 is #{num1 + num2}"

# 如果你的num1 and num2 轉成整數後不是數字，他會直接轉成0... 所以一定不會報錯 

division1 = 10 / 4
division2 = 10 / 4.0
division3 = 10.0 / 4
division4 = 10 / 2.0
division5 = 10 * 2
division6 = 10 * 2.0

puts division1,division2,division3,division4,division5,division6

# 你只要整數與整數做任何運算，他輸出只會有整數部分，所以這個在除法上，要注意一下
# 如果要出現浮點數的部分，你一定要有一個數是float 


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

puts '-' * 20
20.times { print '-' }

# 上面的times 則是可以重複執行某一行指令  .times {}
# 但這樣不就重複呼叫20次？

puts ''
puts 20.even?

# ruby 居然還有奇偶數判斷

puts 'Please input the first number'
num1 = gets.chomp.to_i
puts 'Please input the second number'
num2 = gets.chomp.to_i

puts "The calculation of num1 and num2 is #{num1 + num2}"

# 如果你的num1 and num2 轉成整數後不是數字，他會直接轉成0... 所以一定不會報錯

puts 0 == false

# 你要注意，ruby的0與false不是同一個object，所以0不能拿來當作if的判斷

check = 0
p 'Zero is not false' if check

# 像上面這種情況， ruby會讓他過喔，因為check有內容，是0，不會判斷成false

p 'Wow! You can see this line.' if 0

# 這行更直接寫0，ruby會給他過喔

# and or && || 他們的權重你要注意， && || 的權重高過and or很多
# 在判斷式常常會用到 or and的情況，
# 我這幾天寫leetcode遇到坑
if 123.class == Integer && "jojo".class == String
  p "It's the && part"
end

# 上述這種情況還好， && and 都會通過

if 123.class.eql? Integer && "jojo".class == String
  p "It's the && part"
elsif 123.class.eql? Integer and 'jojo'.class == String
  p "It's the and apart"
end

# 像上述這種情況，.eql? 會把後面 Integer && "jojo".class == String 看成你要確認的內容
# 所以你要避免這種情況，一種就是用and 另一種就是要在後面加括號而且不要有空格

if 123.class.eql?(Integer) && "jojo".class == String
  p "It's the && part"
elsif 123.class.eql? Integer and 'jojo'.class == String
  p "It's the and apart"
end

# rubocop也會對上面這種情況 hightlight
# 那為什麼&& || and or 的權重不一致？
# 主要是ruby會有這種寫法 a ||=1
# || &&的權重會比=高 and or則是比=低
# a = a || 1
# 會先判斷 a || 1 才賦與值給a

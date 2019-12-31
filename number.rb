division1 = 10 / 4

division2 = 10 / 4.0

division3 = 10.0 / 4

division4 = 10 / 2.0

multiplication1 = 10 * 2

multiplication2 = 10 * 2.0

num1 = 10**2

puts division1, division2, division3, division4, multiplication1, multiplication2
puts num1

# 你只要整數與整數做任何運算，他輸出只會有整數部分，所以這個在除法上，要注意一下
# 如果要出現浮點數的部分，你一定要有一個數是float

sqrt_num1 = 4**0.5

sqrt_num2 = Math.sqrt(4)

p sqrt_num1, sqrt_num2

# 平方根可以有上述兩種方式呈現，但得到的值含有小數點

p sqrt_num1.to_i

# 這樣才能轉成整數

p 15.zero?

# 我看到這個method的時候，真的覺得很妙
# 我看到這個method情境是要確認當前index不是0的時候

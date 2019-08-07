list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 11]
p list1
puts list1

puts list1.last

# .last method輸出最後一個位置

puts list1.first

# .first method輸出第一個位置

list1 << 'Jack'
p list1

# << 這就是python的append

list1.append('Rose')
p list1

# ruby也可以用append

list1.push('duke')
p list1

# ruby也可以用js的push

list1.unshift('Jack')
p list1

# .unshift method可以再將內容加在array前面

p list1.uniq

# .uniq會幫你去除重複的內容

p list1.empty?

p list1.include?('Luis')

# .include?() 讓你判斷某內容是否存在

pop_item = list1.pop
p pop_item
p list1

# ruby一樣也有pop,沒有指定，就是移除最後一項，不過有指定的情況要再查查

p list1.join('-')

# .join就跟python的''.join一樣

list1 = list1.join('-')
p list1.split('-')

# .split() method 依什麼元素做分隔

range1 = 1..100

# ruby跟python一樣都有range function
# 不過ruby的range寫法就像上面這樣，定義出範圍

puts range1.class

# check the type. It's range!!

p range1.to_a

# range method .to_a 可以直接轉換成array

p range1.to_a.shuffle

# 生成array是增冪排列，你可以用shffule去洗牌，讓生成的內容打亂

range1 = range1.to_a.shuffle!
p range1

# shuffle!這個後面加了驚嘆號，代表要存入此次的改變，當然你得用一個變數讓他存

range2 = (1..50).to_a
p range2

range2 = range2.reverse!
p range2

# 驚嘆號不是獨有！ ， 你只要想要存入你的變化，就可以在後面加上驚嘆號

range3 = ('a'..'z').to_a
p range3
p range3.length

# 字母也可以生成

list3 = %w[I am luis and I am happy to learn ruby]
p list3

# %w是直接幫你轉句子，依空白處轉成array，這看起來挺方便的，不過括號其實不一定要大括號，也可以用小括號

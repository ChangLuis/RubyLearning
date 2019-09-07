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

list1 << 'lily'
p list1

# ruby也可以用<<符號 來表示我要加入內容於array後面

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

range2 = (1..5).to_a
p range2

range2_no_excalmationmark = range2.reverse
p range2
p range2_no_excalmationmark

# 沒有驚嘆號，不是in_place改變

range2.reverse!
p range2

# 有驚嘆號，會直接改變原本的array
# 驚嘆號不是獨有！ ， 你只要想要存入你的變化，就可以在後面加上驚嘆號

range3 = ('a'..'z').to_a
p range3
p range3.length

# 字母也可以生成

list3 = %w[I am luis and I am happy to learn ruby]
p list3

# %w是直接幫你轉句子，依空白處轉成array，這看起來挺方便的，不過括號其實不一定要大括號，也可以用小括號

range3.each do |char|
  p char
end

# ruby對array與string都有這種內建的iterate block
# convention 是用do end來表示block範圍  但如也可以用{}

range3.each { |char|
  p char
}

# 但如果要用{} convention是比較頃向在使用一行的時候

range3.each { |char| p char }

range3.each_with_index { |char, idx| puts "charater is #{char},index is #{idx}." }

# each_with_index 就是python enumerate
# 差別在於python enumerate 前面是index 後面是content
# each_with_index 是前面content 後面index

range3.each.with_index { |char, idx| puts "charater is #{char},index is #{idx}." }

# 還有這種先each  再加上with_index的寫法
# with_index是建立在要各別iterate內容 才能顯示的index
# with_index沒辦單獨使用!!
# 那用這個的好處在哪裡？
# each.with_index 可以自定義起始index開頭

range3.each.with_index(1) { |char, idx| puts "charater is #{char},index is #{idx}." }

# 那有沒有辦法直接用with_index?
# 其實有方法的，with_index他其實是屬於enumertator 這個內建的class
# each這個method也許是包在enumerator裡面 然後被其他object借用，操作這個method後，可能就把enumertator繼承
# 所以我其實可以先把array轉成enumertator 接著就能直接操作with_index

range4 = range3.to_enum
p range4

range4.with_index { |char, idx| puts "charater is #{char},index is #{idx}." }
range4.with_index(2) { |char, idx| puts "charater is #{char},index is #{idx}." }

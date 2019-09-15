array1 = %w[Today is the fine day.]

for i in array1
  p i
end

array1.each do |i|
  p i
end

# ruby的for loop，當然有包含傳統的寫法
# 但他也有自己的寫法，用起來類似於js，概念都是希望能寫在一行裡面
# .each do |parser| end  他是可以這樣寫，不過更常寫成下面這樣子

array1.each { |index| p index }

# 這樣寫，會比較簡潔

array2 = (1..100).to_a.shuffle
p array2.select { |num| num.odd? }

# 其實要做一些判斷的 method都可以這樣寫

array2.select!(&:odd?)
p array2
# rubocop 傾向要我這樣寫

array3 = array2.select { :odd? }
array4 = array2.select { '&:odd?' }
# 其實也可以寫成上面這兩種
p array3
p array4

# 會精簡成下面這些寫法，主要是block裡面的做的事情都是一樣的，可以不用再定義 |num| 這種情況

p (1..50).to_a.reduce(:+)

# 你一定會看過這種寫法，不過比較多應該看到的是inject(:+)
# 但實際上是reduce inject這兩個method是一樣的功能
# :+ 就是 + 囉，他的實際意義是
p (1..50).to_a.reduce { |all_sum, num| all_sum += num }

# 基本上就是一直加每個num,所以其實可以直接寫成&:+
# 但ruby對這個&:+ 進一步優化成:+

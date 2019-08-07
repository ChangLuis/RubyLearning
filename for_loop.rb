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

array2 = array2.select { '&:odd?' }

# rubocop 傾向要我這樣寫

p array2

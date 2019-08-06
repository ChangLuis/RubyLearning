puts 10 > 9
puts 10 != 3
puts 'hello' == 'Hello'
puts 10.0 == 10
puts 10.0 === 10
puts 10.equal?(10.0)

# 這一段最主要的重點就是type的問題
# 如果你只是要判斷內容的值是否一致，== === 並不會去判斷type
# 如果一定要判斷type,你可以用method  .equal?()

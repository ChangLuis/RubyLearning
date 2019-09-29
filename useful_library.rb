require "prime"

def prime_count(num)
  Prime.each(num).count
  # Prime.each(num).to_a.length
end

p prime_count(100)
# Prime library 直接幫你找出範圍內的質數

require 'active_support/all'

p Time.parse("2019-01-01 08:00").beginning_of_day

# 如果要在純ruby狀態下操作，例如上述的Time.parse or beginning_of_day
# 你需要require上面那個核心擴充class

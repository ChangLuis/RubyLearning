require "prime"

def prime_count(num)
  Prime.each(num).count
  # Prime.each(num).to_a.length
end

p prime_count(100)
# Prime library 直接幫你找出範圍內的質數

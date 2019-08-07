# Student information
class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = password
  end

  def to_s
    puts "firstname: #{@first_name}, lastname: #{@last_name}, username: #{@username}, email: #{@email}, password: #{password}"
  end
end

student_tony = Student.new('tony', 'stark', 'stark.T', 'tony@gmail.com', 'ironman')

puts student_tony
puts student_tony.email

# attr_accessor是在定義這個class可以被給予值而呼叫的參數
# python直接就是self.xxxx,ruby幹嘛要我自己在上面寫一遍？
# 目前我知道，他還有另一個只能讀的呼叫參數，attr_reader

# inintialize func  ==  __init__ func
# to_s method也是一種特殊func,你可以定義這個func,然後純粹呼叫這個class時，會出現你打在to_s的內容

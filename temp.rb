

   #Вычислить сумму массива исключая  мин и макс значения
#  def sum_array(arr) 
#   if arr.empty? || arr.none?
#     return 0
#   elsif arr.length == 1 || arr.length == 2
#     retutn 0
#   else
#     arr.delete(arr.min)
#     arr.delete(arr.max)
#     arr.inject { |sum, n| sum + n }  
#   end
# end

#  p sum_array([1, 4, 8, 5, 2])
# ---------------------------------
# Найти наибольшее и наименьшее значение 
# a=( "4 2 1 3 6")

# def high_and_low(numbers)
#   arr = numbers.split(" ")
#  arr.map!{|x| x.to_i}.sort!  
# "#{arr[-1]} #{arr[0]}"
 #"  #{arr.min} #{arr.max}" # или так
# end

# p high_and_low(a)
#-----------------------
# Создать метод в классе String который каждое слово пишет с большой буквы.
# class String
#   def toJadenCase   
#     split(" ").map{|n| n.capitalize}.join(" ")
#   end
# end
# string = "How can mirrors be real if our eyes aren't real"

# puts string.toJadenCase

#--------------------------------------------------------------------------
# "Заменить в слове повторяющиеся буквы на '(' а другие буквы в слове на ')' к примеру
# слово 'poloRoidalnij', будет выглядеть так '),(,(,(,),(,(,),),(,),(,)"

# def duplicate_encode(word)
#   arr = word.split(//)

#   counts = Hash.new(0)
#   arr.each {|letter | counts[letter]+= 1}
#   counts

#    freq = []
#    counts.each do|w, num| 
#      if num >= 2
#       freq << w
#      end
#  end

# freq = "[" + freq.join("") +"]"
#     pi = Regexp.new freq
#     string = word.gsub(pi, "(,")
#     new_string = string.gsub(/[\w]/, "),")
#  end
 
#  p duplicate_encode("poloRoidalnij")
 
 # "Замена букв в слове на знаки"
# str = "Dog and Cat"
# new_str = str.gsub(/[ag]/, ",)")
# new_str2 = new_str.gsub(/[dDonCt\s]/, ",(")
# p new_str2

#---------------------------------------------------------
# def print_elements_not_in_array(a, b)
#   new_arr= []
#   a.each do |temp|
#     b.each do |temp2|
#       if temp  != temp2
#         temp = temp.to_s+"-"
#         new_arr << temp
#       else
#         temp = temp.to_s+"+"
#         new_arr << temp
#     end
#   end

# end
#   new_arr.values_at(* new_arr.each_index.select {|i| i.even?})
# end

# p print_elements_not_in_array(ar, ar2)

# def pre_fizz(n)
# (1..n).to_a
# end
 
#  def get_sum(a,b)
#   if a == b
#     a
#   elsif a > b
#     ((b..a).to_a).inject(:+)
#   else
#   ((a..b).to_a).inject(:+)
# end
# end

# p get_sum(-1,-1)

#-------------------------------------------
# Перевод двоичного кода в десятичный
# def binary_array_to_number(arr)
#   # your code here
# end 
# 1, 0, 1, 1
# 11

#  ar = 1, 0, 0, 1
#  sum = 0
#  st = 3
#  ar.each do |b|
#   sum += b*2**st
#   st-=1
# end

#  p sum

# ar.split(",").map{|digits| digits.to_i}


# p (1*2**3)+ (0*2**2)+ (1*2**1)+(1*2**0)

#Перевод бинарного числа в десятичное трема способами

# def binary_array_to_number(arr)
#  sum = 0
#  st = arr.length-1
#  arr.each do |b, i|
#   sum += b*2**st
#   st-=1
# end
# sum
# end 
# p binary_array_to_number(1, 0, 0, 1, 1, 0, 1, 1)
#----------------------------------------------
# def binary_array_to_number(*arr)
#   sum = 0

#   arr.reverse.each_with_index do |element, index|
#     sum += element * 2**index
#   end

#   sum
# end

# p binary_array_to_number(1, 0, 0, 1, 1, 0, 1, 1)
#-------------------------------------------------
#  def binary_array_to_number(arr)
#   arr.reverse.each_with_index.inject(0) do |memo, (element, index)|
#     memo += element * 2**index
#   end
# end

# Создать метод который бы переводил название например книг в титульный формат.

# def title_case(*title)
#    if title.length == 1
#      title[0] = title[0].split(" ")
#      title[0].each{|n| n.capitalize!}
#    else 
#      title[0] = title[0].split(" ")
#      title[1] = title[1].split(" ")
#      title[0].each do |n| n.capitalize!
#      title[1].each do |n2|
#       if n.downcase == n2.downcase
#        n.downcase!
#         end
#        end
#       end
#     end
#     unless title[0].empty?
#     title[0].first.capitalize!
#   end
#     title[0].join(" ")
# end

# p title_case("a bc", "BC")

# # варианты решения почуствуй себя дебилом!!)))
# def title_case(title, minor_words = '')
#   title.capitalize.split().map{|a| minor_words.downcase.split().include?(a) ? a : a.capitalize}.join(' ')
# end
# #-----------------------------------------------
# def title_case(title, minor_words='')
#   minor_words = minor_words.downcase.split(' ')
#   title.capitalize.split(' ').map { |word| minor_words.include?(word.downcase) ? word : word.capitalize }.join(' ')
# end



# def sum(*members)
#     initial = 0
#     members.collect{ | item | initial += item }
#     initial
# end

# p sum(10, 20)

# def title_case(title, minor_words)
#    minor_words = minor_words.split(" ")
#   title = title.split(" ")
 
#   title.each do |n| n.capitalize!
#   minor_words.each do |n2|
#     if n.downcase == n2
#       n.downcase!
#    end
#  end
# end
#    title.join(" ")
# end
# p title_case("hello glad to meet You", "how are you doing!")

#-----------------------------------------------------------------------------------------------------
# "Найти в цифру которая отличается от других цифр (в данном случае отличие между четными и нечетными),
# и записать ее порядковый номер."
#  "Мой вариант"

#  def iq_test(numbers)
#   numbers = numbers.split().map { |int| int.to_i}
# arr_even= []
# arr_odd = []
#  numbers.each_with_index do |n, i|
#   if n.even? 
#     arr_even << i+1
#   else
#     arr_odd << i+1
#   end 
# end
 
#  if arr_even.length > arr_odd.length
#    arr_odd.join().to_i
# else
#    arr_even.join().to_i
#  end
#  end

# p iq_test( '12 2 26 42 10 40 0 0 4 2 50 22 18 51 18 30 16 20 8 18')

# "Другие варианты"
# "------------------------------------"
# def iq_test(numbers)
#   nums = numbers.split.map(&:to_i).map(&:even?)
#    nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
# end
# "--------------------------------------"
# def iq_test(numbers)
#   numbers = numbers.split(" ").map{|n| n.to_i.even? }
#   numbers.index(numbers.count(false) == 1 ? false : true) + 1
# end

# p iq_test( '12 2 26 42 10 40 0 0 4 2 50 22 18 51 18 30 16 20 8 18')

# "Работа над ошибками и новыми выражениями"

# "выражение ниже 
# nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1"
# "тоже что
# if nums.count(true) > 1
#   nums.index(false) + 1
# else
#   nums.index(true) + 1
# end"

#---------------------------------------------------------
# "Создать методы в классе Array, один который суммирует каждый елемент  и котороый умножает
# каждый елемент на самого себя."
# class Array
#   def square
#     map { |x| x * x }
#   end
#   def sum
#     map{|x| x + x}
#   end

#   # now fill in the rest
# end
# p [1, 2, 3, 4, 5].square
# p [1, 2, 3, 4, 5].sum

#-------------------------------------------------------------

# You might know some pretty large perfect squares. But what about the NEXT one?

# Complete the findNextSquare method that finds the next integral perfect square 
# after the one passed as a parameter. Recall that an integral perfect square is 
# an integer n such that sqrt(n) is also an integer.

# If the parameter is itself not a perfect square, than -1 should be returned. 
# You may assume the parameter is positive.

# Examples:

# findNextSquare(121) --> returns 144
# findNextSquare(625) --> returns 676
# findNextSquare(114) --> returns -1 since 114 is not a perfect

 # мое решение

# def find_next_square(sq)
#   a = ((Math.sqrt(sq) +1)**2).to_i
#   b = (Math.sqrt(sq)+ 1)**2
 
#   if a/b == 1.0
#     a
#   else
#     -1
#   end
# end

# p find_next_square(145)
#---------------
# другой вариант это же задачи
# def find_next_square(sq)
  # Return the next square if sq is a perfect square, -1 otherwise
#   number = Math.sqrt(sq) + 1
#   number % 1 == 0 ? number**2 : -1
# end


# --------------------------------------------------------------------------
  # "Посчитать сумму всех чисел начиная с еденицы и заканчивая  цифрой в условии. если в условии не будет
  # знака, или оно будет содержать простую строку, вывести false на экране."

#Мой вариант
# def f(*n)
#   if n.any? and n.join.to_i.class == Fixnum
#      n = n.join.to_i

#    end
#   if n.class == Fixnum and n >= 1 
#   (1..n).to_a.inject(:+) 
#   else
#     false
# end
#  end
  
 #Моя работа над ошибками
# def f(*n)
#    (n.any? and n[0].is_a?(Integer) and n[0] >= 1) ?  (1..n[0]).to_a.inject(:+) : false
# end

# Другие варианты
#---------------
# def f(*n)
#   return false unless n.is_a?(Integer) && n > 0
#   n * (n + 1) / 2
# end

#  p f("asdf")
#---------------
# def f(*n)
#   (n.is_a? Integer and n > 0) ? (1..n).reduce(:+) : false
# end

# p 100 * (100+1)/ 2
#---------------------------------------

#"Cоздать метод который  разбивал бы число например  10231 на строку '10000 + 200 + 30 + 1'"
 # Мое решение 

# def expanded_form(num)
#  num = num.to_s.split("").map!{ |n| n.to_i}
#  arr_length = num.length-1
#  arr = []
#  ind_o = []
#  num.each_with_index do |n ,i|
#  if n == 0
#    ind_o << i 
#    else
#     arr <<  (n.to_s + "0" *(arr_length - i))
#   end
# end
# arr.join(" + ")
# end

#  p expanded_form(20304)

# Другие решения
# def expanded_form(num)
#   ans = num.to_s.chars.map.with_index {|n, i| n + ("0" * (num.to_s.chars.slice(i..-1).length - 1))}
#   ans.select {|n| n.to_i > 0}.join(" + ")
# end
#----------------------------------------------------------------------------------------
# You have a sequence of positive numbers starting with 1, but one number is missing!
# Find out the missing number; if the sequence is not broken, you should return 0.
# Each sequence always increments by 1.

# In short: an invalid sequence (a string with non numeric character) must return 1, 
# an already complete (or empty) sequence must return 0; a broken sequence with more 
# than one number missing should return the lowest missing number; otherwise return 
# the missing number.

# Note that the input may be with random order.

# find_missing_number("1 3 2 5") # returns 4, because 4 is missing
# find_missing_number("1 2 3 4") # returns 0, because the sequence isn't broken
# find_missing_number("1 5") # returns 2, because the sequence is missing more than o

#"Мой вариант"
# def find_missing_number(*num)
 
#   if num.join("").empty? or num.length == 0
#     0
#   elsif num.join("").split.map!{|n| n.to_i}.min == 0
#     1
#   else
#     num = num.join("").split.map!{|n| n.to_i}
#      range = (1..num.max).to_a
#      (range - num).empty? ? 0 : result = (range - num)[0]
   
#   end
# end

#"Другие решения"
#-----------
# def find_missing_number(sequence)
#   number_sequence = sequence.split.map(&:to_i).sort
  
#   number_sequence.each.with_index(1) do |actual, expected|
#     return expected unless actual == expected
#   end
  
#   0
# end
#----------------
# def find_missing_number(sequence)
#   sequence.split.map(&:to_i).sort.each.with_index(1) do |n, i|
#     return i if n != i
#   end
#   0
# end


 #---------------------------------------------------------------------- 
  # Дан массив со словами внутри, зделать так чтобы в 
   # одном массиве находились массивы с двумя елементами, 
   # и каждый раз в первый елемент добалялось каждое 
   # следующее слово, а во втором на это слово уменьшалось.
 
#  innitial_array = %w[az toto picaro zone kiwi]
# result = []

# (innitial_array.size - 1).times do |i|
#   string1 = innitial_array[0, i+1].join(' ')
#   string2 = innitial_array[i+1..-1].join(' ')
#   result << [string1, string2]
# end

# p result
#-----------------------------------------------

# "The input is any random string. You must then discern what are vowels and what are 
# consonants and sum for each category their total occurrences in an object. However 
# you could also receive inputs that are not strings. If this happens then you must 
# return an object with a vowels and consonants total of 0 because the input was NOT 
# a string. Refer to the Example section for a more visual representation of which inputs 
# you could receive and the outputs expected. :)"
# "Example:
# Input: get_count('test')
# Output: {vowels=>1,consonants=>3}

# Input: get_count('tEst')
# Output: {vowels=>1,consonants=>3}

# Input get_count('    ')
# Output: {vowels=>0,consonants=>0}

# Input get_count()
# Output: {vowels=>0,consonants=>0}"


# def get_count(words)
#   words.split("")
# end


#  def get_count(*words)
#   if (words[0].class == Array) || (words[0].class == Hash)
#     words = []
#   end
#     vow = words.join.downcase.scan(/[aeiou]/)
#     if vow.empty?
#       words = []
#     end
#   cons = words.join.downcase.split("") - vow
#  cons.map! do |l|
#  unless l =~ /\W/
#  l
#  end 
#  end
#  cons = cons.compact
#  counter = {"wowels" => vow.length, "consonants" => cons.length}
# end


# p get_count('ghtar')

# Другие варианты
# def get_count(words=nil)
#   if words.class == String
#     {"vowels"=>words.downcase.split("").select{ |v| v =~ /[aeiou]/ }.length,
#     "consonants"=> words.downcase.split("").select{ |c| c =~ /[bcdfghjklmnpqrstvwxyz]/ }.length}
#   else
#     {"vowels"=>0,"consonants"=>0}
#   end

# end



# def sum_two_smallest_numbers(numbers)
#   numbers.min(2).inject(:+)
# end

# p sum_two_smallest_numbers([7, 15, 12, 18, 22])
# p  n = (1/7.to_f).round(2)

# p (0.142857142857 * 2).round(2)
# p 1/4.to_f

# def series_sum(n)
#   x = -2
#   s = 0
#   n.times do 
#     x+= 3
#     s += 1/(x.to_f)
#   end
#   sum = s.round(2).to_s
#    s.round(2).to_s.length == 3 ? sum + "0" : sum
# end

#   p series_sum(1)

 # p (1 + 1/4.to_f + 1/7.to_f + 1/10.to_f + 1/13.to_f).round(2)

#  другое решение

#  def series_sum(n)
#   denominator = 1
#   total = 0
#   n.times do 
#     total += (1.0/denominator)
#     denominator += 3
#   end
#   "#{format("%.2f", total)}"
# end

# def number_joy(n)
#    sum = n.to_s.split("").map {|str| str.to_i}.inject(:+)
#    sum *(sum.to_s.reverse).to_i == n ? true :false
# end
# # другое решение
# def number_joy(n)
#   s = n.to_s.chars.map(&:to_i).reduce(0, :+)
#   n % s == 0 && s * s.to_s.reverse.to_i == n
# end

# p number_joy(1729)

#-------------------------------------------------------------------------------------------
# 'ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 
#letters after it in the alphabet. ROT13 is an example of the Caesar cipher.
# Create a function that takes a string and returns the string ciphered with Rot13. If 
# there are numbers or special characters included in the string, they should be returned 
# as they are. Only letters from the latin/english alphabet should be shifted, like in 
# the original Rot13 "implementation".
# Please note that using "encode" in Python is considered cheating.


# describe "Rot13" do
#   it "test" do
#     Test.expect("grfg" == rot13("test"), "Input: test , Expected Output: grfg , Actual Output: " + rot13("test"))
#   end    
#   it "Test" do
#     Test.expect("Grfg" == rot13("Test"), "Input: Test , Expected Output: Grfg , Actual Output: " + rot13("Test"))    
#   end
# end'

# 'Rot13  это простой шифровальщик который заменяет буквы в слове на 13 букв
#  ниже в алфавитной последовательности. Задача создать функцию которая берет
#  и и шифрует ее заменяя каждую букву со сдвигом в 13 символов.'
 # Мой метод

# def rot13(string)
#  str = string.split("")
#  others = string.scan(/[\W\d]/)
#  punct = []
#  others.each do |th|
#     str.each_with_index do |s, i|
#       th == s ? punct << [s, i] : th
#     end 
#   end
#  code = []
#  check = ("a".."z").to_a + ("A".."Z").to_a
#  str.each do |st|
#  check.each_with_index do |sh, i|
#     if st == sh and i < 25 and (i+13) <= 25
#       s = i + 13
#       code << s
#     elsif  st == sh and i <= 25 and (i +13) > 25 
#       s = i - 13
#       code << s
#     elsif st == sh and i > 25 and (i+13) <= 51
#       s = i + 13
#       code << s
#     elsif  st == sh and i > 25 and (i +13) > 51
#       s = i - 13
#       code << s
#        end
#     end
#   end
#   code.map!{|f| check[f] }
#    if punct.empty? 
#      punct
# elsif punct.length == 1
#     punct
#   else
#     punct = punct.uniq.sort_by!{|n| n[1]}
#   end
#   punct.each do |n| 
#    code = code.insert(n[1], n[0])
#   end
#   code.compact.inject(:+)
# end

# Другой метод
# def rot13(string)
#   origin = ('a'..'z').to_a.join + ('A'..'Z').to_a.join
#   cipher = ('a'..'z').to_a.rotate(13).join + ('A'..'Z').to_a.rotate(13).join
#   string.tr(origin, cipher)
# end

 # p rot13("Ruby is cool!")

 # check = ("a".."z").to_a + ("A".."Z").to_a
 #  p check

 # fighters = [
 #    ["Ryu", "E.Honda", "Blanka", "Guile", "Balrog", "Vega"],
 #    ["Ken", "Chun Li", "Zangief", "Dhalsim", "Sagat", "M.Bison"]
 #  ]
#   position = [0,0]
#   moves = 
#   def streetFighterSelection(fighters, position, moves) 
# end

# arr = [[1, 3, 5, 7, 9], [2, 4, 6, 8, 10]]

# p arr[0][2-1]


  #  position = [0,0]
#    moves = ["left","left","left","left","left","left","left","left"]
#   def streetFighterSelection(fighters, position, moves)    
#   n = position[0]
#   i = position[1]
#   fighters[n][i]
#    new_arr = []
#    ir = []
#   moves.each do |str|
#     if str == "up"
#      new_arr<< fighters[n = 0][i]
#     elsif str == "down"
#      new_arr<< fighters[n = 1][i]
#     elsif str == "left" and i >(-6) 
#       i+=(-1)
#       new_arr<< fighters[n][i]
#     elsif str == "right" and i < 5
#       i+=1
#       new_arr<< fighters[n][i] 
#     elsif str == "left" and i ==(-6)
#       new_arr<< fighters[n][ i=(-1)]
#     elsif str == "right" and i == 5
#       new_arr<< fighters[n][i = 0]
#     end
#   end
#      new_arr
# end
#  p streetFighterSelection(fighters, [0,0], moves)


#  fighters = [
#     ["Ryu", "E.Honda", "Blanka", "Guile", "Balrog", "Vega"],
#     ["Ken", "Chun Li", "Zangief", "Dhalsim", "Sagat", "M.Bison"]
#   ]

# position = [0,0]
# moves = ["left", "left", "left", "left", "left", "left", "left", "left", "left" ]
# # "Работа над улучшением кода"
#  def streetFighterSelection(fighters, position, moves)    
#   n = position[0]
#   i = position[1]
#   fighters[n][i]
#    new_arr = []
#    moves.each do |str|
#     case str
#     when "up" then new_arr << fighters[n = 0][i]
#     when "down" then new_arr << fighters[n = 1][i]
#      when "left" then new_arr<< fighters[n][i >(-6) ? i-=1 : i =-1]
#     when "right" then new_arr<< fighters[n][i < 5 ? i+=1 : i = 0] 
#       end
#     end
#   new_arr
 
#   end
# p streetFighterSelection(fighters, [0,0], moves)



# def streetFighterSelection(fighters, position, moves)
#   x = position[0]; y = position[1]
    
#   moves.map { |move| 
#     case move 
#       when "right" then fighters[x][y == 5 ? y = 0 : y += 1]        
#       when "left" then fighters[x][y == 0 ? y = 5 : y -= 1]        
#       when "down" then fighters[x == 1 ? 1 : x += 1][y]         
#       when "up" then fighters[x == 0 ? 0 : x -= 1][y]      
#     end
#   }
# end


# def streetFighterSelection(fighters, position, moves)
#   # Code here...  FIGHT!!!
#   list = []

#   moves.each do |m|
#     if m == "up"
#       position[0] -= 1 if position[0] >= 1
#     elsif m == "right"
#       position[1] == 5 ? position[1] = 0 : position[1] += 1
#     elsif m == "left"
#       position[1] == 0 ? position[1] = 5 : position[1] -= 1
#     elsif m == "down"
#       position[0] += 1 if position[0] == 0
#     end
#     p m 
#     p position
#       list << fighters[position[0]][position[1]]
#   end
#     p list
# end


# capacity = 30
#   arr = []
# case capacity
# when 0
#  n = "You ran out of gas."
# when 1..20
#   n = "The tank is almost empty. Quickly, find a gas station!"
# when 21..70
#  n = "You should be ok for now."
# when 71..100
#  n = "The tank is almost full."
# else
#   n = "Error: capacity has an invalid value (#{capacity})"
# end

# p n


# "------------------------------------------------------------------------------"
#"Сложение бинарных чисел"
# 'сложить бинарные числа без перевода в десятичные'
# 'Мое решение'
# def add(a,b)
#   a = a.reverse.split("")
#   b = b.reverse.split("")
#   if a.length > b.length
#     (a.length - b.length).times do b << 0
#     end
#     elsif  b.length > a.length
#       (b.length - a.length).times do a << 0
#     end
#   end
#   arr = []
  
#   s = 0
#   a.each_with_index do |st1, ind1|
#    b.each_with_index do |st2, ind2|
    
#     if st1 == st2 and ind1 == ind2 and st1 == "0"
#       arr << 0 + s
#       s = 0
#     elsif  st1 == st2 and ind1 == ind2 and st1 == "1"
#    arr << 0 + s
#    s = 1

#     elsif st1 != st2 and ind1 == ind2
      
#       if (st1.to_i + st2.to_i) + s == 2
#         arr << 0
#         s = 1
#       else
#         arr << (st1.to_i + st2.to_i) + s
#         s = 0
#       end
#     end
#    end
#   end
#  if s == 0
#  arr = arr.reverse
# else
#   arr << 1
#   arr = arr.reverse
# end
# while arr.first == 0 and arr.length !=1
#   arr.shift
# end
#   arr.join
# end

# p add('00','0')
# "-----------------------"
# "Другие варианты решения"
# def add(a,b)
#   (Integer("0b"+a)+Integer("0b"+b)).to_s(2)
# end
# "-----------------------"
# def add(a,b)
#  hello = Integer("0b"+a)
#  hilo = Integer("0b"+b)
#  rule = hello +hilo
#  rule.to_s(2)
# end
# "-----------------------"

# def add(a, b)
#   c = []
  
#   a.reverse!
#   b.reverse!

#   0.upto([a.length, b.length].max - 1) do |i|
#     c[i] = Integer(a[i] || '0') + Integer(b[i] || '0') + (c[i] || 0)
#     if c[i] > 1
#       c[i] = c[i] % 2
#       c[i + 1] = 1
#     end
#   end
  
#   return '0' unless c.include?(1)
#   c.reverse.join.sub(/^0+/, '')
# end
# "-----------------------"


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
# "----------------------------------------------------------------------------------------"

# "The function you are going to write is not actually going to help you with your piano playing,
#  but just explore one of the patterns you're experiencing: Given the number you stopped on,
#  was it on a black key or a white key? For example, in the description of your piano exercise 
#  above, if you stopped at 5, your left thumb would be on the fifth key of the piano, which is
#   black. Or if you stopped at 92, you would have gone all the way from keys 1 to 88 and then 
#   wrapped around, so that you would be on the fourth key, which is white.

# Your function will receive an integer between 1 and 10000 (maybe you think that in principle 
# it would be cool to count up to, say, a billion, but considering how many years it would take 
# it is just not possible) and return the string "black" or "white" -- here are a few more 
# examples:"

# def black_or_white_key(count)
#   while count > 88
#     count-= 88
# end

# while count > 12
#   count -=12
# end

# white = [1, 3, 4, 6, 8, 9, 11]
# black = [2, 5, 7, 10, 12]
#   white.each do |n|
#   black.each do |n2|
#     if count == n
#   @result = "white"
#   elsif count == n2
#   @result = "black"
#   end
# end
# end
# @result
# end

#  p black_or_white_key(201)
#  "---------------------"
# "другие решения"

# def black_or_white_key key_press_count
#   'wbwwbwbwwbwb'[(key_press_count-1)%88%12] == ?w ? 'white' : 'black'
# end
# p black_or_white_key(201)
# "-----------------------"
# def black_or_white_key(key_press_count)
#   b_or_w((key_press_count) % 88 % 12)
# end

# def b_or_w(x)
#   [1, 3, 4, 6, 8, 9, 11].include?(x) ? "white" : "black"
# end

# p black_or_white_key(200)

# "---------------------------------------------------------------------------------------------"


# class String
#   def ipv4_address?
#     arr2 = []

#    arr = self.split(".")
     
#      arr.empty? ? arr2 << false : arr2 << true

#        arr.length == 4 ? arr2 << true : arr2 << false
#       arr.each do |num|
#        if num.to_i.to_s.length == num.length
#          arr2 << true
#           num = num.to_i
#           num >= 0 and num < 255 ? arr2 << true : arr2 << false
#         else 
#           arr2 << false 
#        end
#      end
#       arr2.include?(false) == true ? false : true
#   end
# 
# def persistance(n)
#   hash = []
#   first = n.to_s.split("")
#   first.each{|n| hash << n.to_i}
#   num = 0 
#   res = []
#     until hash.length < 2    do
#    hash = hash.inject(:*).to_s.split("")
#     hash.each{|n| res << n.to_i}
#     hash = res
#     res = []
#      num +=1
#     end
#   num
# end

# p persistance(999)

# def persistance(n)
#   hash = []
#  first = n.to_s.split("")
# end
# p persistance(999)

# 5.times do |n|
#   puts "string is #{n} "
# end

#'------------------------------------------------------'
# def longest_palindrome s
#   arr = []
#   arr2 = []
#   if s.length == 0
#     arr2 << 0
#    elsif s.length >=1 
#     arr2 << 1
#   end
  
#  uniq = s.split("")
#   uniq.unshift("@")
#   s = uniq.join

#   (s.length).times do |n|
#    if s[n] == s[n+1] 
#       arr << [n, 2]
#     elsif s[n-1] == s[n+1] and n > 0
#       arr << [n, 3]
#     end
#   end
     
#     arr.each do |n|      
#           arr2 << n[1]
#            @count = 1
#           @amount = 2
#            @amount2 = 3
#          while s[n[0]- @count] == s[n[0]+1+@count]  and  n[0] > 0 do
#            arr2 << n[1] + @amount
#             @count += 1
#              @amount += 2
#           end
#           while s[n[0]- @count] == s[n[0]+@count] and n[0] > 0 do
#            arr2 << @amount2
#            @count += 1
#            @amount2 += 2
#          end
#     end
# # " arr2 = #{arr2}, count = #{@count}, amount = #{@amount}, amount2 = #{@amount2}"
# arr2.max
# end

# p longest_palindrome 'poopee'


# people = []
# people.push 1
# people.push 3

# women = {}
# women[:number] = people
# p women[:number]
# # p @number
# #
# p"_________________________________________"
# # "kirilic33"
# #latin26 + 1
# puts
#  # "Create seed for Iota wallet"


  # def create_password(text)
  #   latin = "ABCDEFGHIJKLMNOPQRSTUVWXYZ9".split("")
  #   kiril = "абвгдеёжзийклмнопрстуфхцчшщъыьэюя".split("")
  #   text = text.gsub(/[[:punct:]]/, ' ').delete(" ")
  #    # "Count and cut the text up to 81 simbol"
  #   array = []
  #   text.length.times do |ltr|
  #     if ltr < 81
  #      array << text[ltr]
  #     end
  #   end
  #   array
  #   # "Create array with letter and index"
  #   check = []
  #   kiril.each_with_index { |ltr, i| check << [ltr, i] }
  #   #"Compare every letter in text to letters in cirillic alpfabet and show it index"
  #   indexes = []
  #   81.times do |i|
  #     check.each do |sec|
  #       if sec[0] == array[i]
  #         indexes << sec[1]
  #       end
  #     end
  #   end
  #   indexes
  #   new_arr = []
  #   indexes.each do |fig|
  #     if fig > 26
  #       fig = fig -27
  #     end
  #     new_arr << latin[fig]
  #   end
  #   new_arr.join
  # end
  # mass = "о сколько нам открытий чудных готовят просвещенья дух и опыт, сын ошибок трудных, и гений, парадоксов друг,"
 
  # p create_password(mass)

#"-----------------------------------------------------------------------------"

# "подсчет суммы по сложным процентам по месяцам"
#  def count_sum(sum, per, mnth, m_d)

#   array = []
#   count = 0
#   (mnth*30).times do 
#    sum += sum.to_f/100* per
#    # "the sum per/day = #{sum}"
#    array << sum
#   end
#   m = 0
#   array.each_with_index do |n, i|
#     if (i+1)%30 == 0 
#       m +=1 
#     puts "#{(i+1)/30} month  = #{n.round(2)} summ " 
#     end  
#   end
# end
# count_sum(40,2 ,12)
#'-----------------------------------------------------------------------------------'

# class Percentage_Count
#   attr_reader :sum, :percent, :month

#   def initialize(sum, percent, month)
#     @sum = sum.to_f
#     @percent = percent.to_f
#     @month = month.to_i
#   end

#   def count_by_day
#      array = []
#    count = 0
#    sum = @sum
#    (@month*30).times do |n|
#      sum += sum/100* @percent
#      # "the sum per/day = #{sum}"
#      array << "#{n+1} day #{sum.round(2)} summ"
#       if  (n+1)%30 == 0
#         array << "#{((n+1)/30+1)} month"
#       end
       
     
#     end
#     array.pop
#     array
#   end

#   def count_by_month
#     array = []
#     count = 0
#     sum = @sum
#    (@month*30).times do 
#      sum += sum/100* @percent
#      # "the sum per/day = #{sum}"
#      array << sum
#     end
#     array2 = []
#     array.each_with_index do |n, i|
#       if (i+1)%30 == 0 
#        array2 << "#{(i+1)/30} month  = #{n.round(2)} summ " 
#       end 

#     end
#     array2

#   end
# end

# count1 = Percentage_Count.new(30, 20, 2)
#   puts count1.count_by_month
  

#'-----------------------------------------------------------------------------'
# "разложение числа на множители"
# def primeFactors(n)
#  h1 = []
#  i = 2
#  while  n >= 1  and i <= 3571 do
#   if n % i == 0
#     h1 << i
#     n = n / i
#   elsif n % i != 0
#     i += 1
#   end
# end

#  hsh = Hash.new(0)
#  h1.each do |n|
#   hsh[n] +=1
# end

# h3 = []
#     hsh.each do |k, n|
#       if n == 1
#         h3 << "(#{k})"
#       else
#      h3 << "(#{k}**#{n})"
#    end
#  end
#  h3.join
#  end
#   p primeFactors(7775460)
  #'--------------------------------------------------------------------------'
  # params = {}
# class Man
#   attr_reader :name, :age
#   def initialize(name, age)
#     @name = name.to_s
#     @age = age.to_i
#   end
# end

#'------------------------------------------------------------------------------'
# "sort by alpfabet by type AaaBbbbDd etc."
# "my solution"
# def find_children(dancing_brigade)
#  dance = dancing_brigade.split('')
# dance = dance.sort_by { |s| [s.upcase + s] }
# dance.join
# end

# p find_children("daCDcAWfdwq")

# "solved by others, two solution"
# def find_children2(dancers)
#   dancers.chars.sort_by{ |c| [c.downcase, c]}.join
# end
# p find_children2("daCDcAWfdwq")


# def find_children3(dancing_brigade)
#   letters = dancing_brigade.chars
#   grouped = letters.group_by {|x| x.downcase}.values
#   grouped.each {|group| group.sort!}.sort.join
# end

# p find_children3("daCDcAWfdwq")
#'---------------------------------------------'
# "create class Array that would convert numbers correspond to disired methods "
# class Array
#   def square
#     self.class each do |n|
#     n * n
#    end
#   end

#   # now fill in the rest
# end


# array = [1, 2, 3, 4, 5]
# p array.square

# class Array
#   def square
#     self.map {|x| x*x}
#   end

#   def cube
#     self.map {|x| x**3}
#   end
  
#   def everage
#     self.sum / size
#   end
  
#   def sum
#     reduce(:+)
#   end
  
#   def even
#     select(&:even?)
#   end
  
#   def odd
#     select(&:odd?)
#   end
# end
# array = [1, 2, 3, 4, 5]
# p array.square
# p array.everage
# p array.cube
# "--------------------------------------------------"
# "we have a triangle piramid in wich all bricks is equal to m
#  n^3  it is how many bricks was on the first basic layer, we hafe to find n,
#  (n-1)^3 the second layer of the piramid so we have to build piramid,  till on the top n = 1
#   m = n^3 +(n-1)^3 + (n-1)^3...n^3 where n= 1 the top of the piramid "
#   "my solution"

# def find_nb(m)
# n = 1
# sum = 0
#   while m > sum do
#       sum = sum + n**3
#       n+=1 
#   end
#   if sum == m
#      n -1
#   else
#      n = -1
#   end
# end
#  p find_nb(24723578342962)
#  "----------"
#  "the other solution"
# def find_nb(m)
#   ct = 0
#   while m > 0
#     ct += 1
#     m -= ct**3
#   end
#   m == 0 ? ct : -1
# end
# p find_nb(24723578342962)
# "----------------------------------------------------------"

def closest(strng)
  arr = []
  arr2 = []
    str = strng.split(' ')
    (str.length).times do |n|
    arr << str[n].split('')
 end 
(arr.length).times do |num|
  sum = 0
 arr[num].length.times do |n|
  sum += arr[num][n].to_i
  if (n+1) == arr[num].length
   arr2 << sum
  end
 end
end
arr3 = []
arr2.each_with_index do |n, i|
  arr3 << [n,i]
end
arr3.sort!
(arr3.length).times do |num|
  arr.each_with_index do |n,i|
if arr3[num][1] ==  i
  arr3[num] << n.join.to_i
end
end
end
arr3
# arr3.each_cons(2){|a| p a }
# .min_by{|a|[a[1][0] - a[0][0]]} || []
# "@@@@@@@@@@@@@@@@@@@@@ интересная фишка для сравнения массивов"
end
 # || []
p closest("444 2000 445 644 2991")


# def closest(strng)
#   strng.split.map
#    .with_index{|a, i|[a.chars.map(&:to_i).reduce(0, &:+), i, a.to_i]}
#    .sort
#    .each_cons(2).min_by{|a|[a[1][0] - a[0][0]]} || []
# end


# def closest(string)
#   if string == ''
#     return []
#   end
#   all_numbers = string.split(' ').map(&:to_i).each_with_index
#   .map { |element, index| [element.to_s.split('').map(&:to_i)
#   .reduce(:+), index, element] }.sort_by { |element| element[0] }
#   array_list = []
#   all_numbers.each_with_index do |element, index|
#     if index + 1 != all_numbers.count
#       difference = (element[0] - all_numbers[index + 1][0]).abs
#       array_list << [element, all_numbers[index + 1], difference]
#     end
#     array_list.sort_by! { |element| element[2] }
#   end
# [array_list[0][0], array_list[0][1]]
# end
# p closest('444 2000 445 644 2991')

# [[2, 1, 2000], [12, 0, 444]]
# [[12, 0, 444], [13, 2, 445]]
# [[13, 2, 445], [14, 3, 644]]
# [[14, 3, 644], [21, 4, 2991]]
#Create a function that takes a string as an argument and adds the phrase "Only in America!" to the end of it


#function "america" accepts one argument, "a" and concatenates "a" with the string " Only in America"
def america(a)
  a + " Only in America."
end
# this calls/invokes on function "america", passes in "a" a string argument and outputs the result
puts america("Just saw this dude poop in a trashcan outside Dave and Busters...")


#Create a method to find the maximum value in an array of numbers. For instance: [100,10,-1000] should return 100. Do not use Ruby's built-in .max method.

# def max_val
  
#   num_list = [1,2,3,54,1212,34532,9]

#   sorted_list = num_list.sort
  
#   i = sorted_list.length - 1
 
#   magic_num = sorted_list[i]
  
#   puts magic_num
# end
# max_val

many_nums = [3, -6, 1, -5, 10000, 9900000000000, 90, 33, 900003000]
def max_value(numray)
  for index in (0..numray.length)
    if index == 0
    #sets variable greater_num to the first number in the array
    greater_num = numray[index]
    #compares next number in array to greater_num .to_i makes them integers otherwise ruby will throw an error
    elsif numray[index+1].to_i > greater_num.to_i
       greater_num = numray[index+1]
       #if the next number is bigger than greater_num then it sets that number as greater_num
     else
       #otherwise greater_num stays at whatever value it was
       greater_num = greater_num
     end
  end
  #return greater_num
  greater_num
end

puts max_value(many_nums)

#Create a method that takes two arguments - both of them arrays. Inside of the method, combine the arrays using the items from the first array as keys and the second array as value
 def Tv(arr_1,arr_2)
  shows={}
  
  i=0
  while i <= arr_1.length - 1
  shows[arr_1[i]] = arr_2[i]
  
  i = i + 1
  end 
  
  puts shows
end

Tv(["genre","name","network"],["drama","suits","USA"])

#fizz buzz 
# def fizzybuzzy
#   # converts range to array and stores in variable "nums"
#   nums = (1..100).to_a

#   # stores words in variables for later retrieval
#   a = "Fizz"
#   b = "Buzz"
#   c = "FizzBuzz"

#   # checks "nums" array for numbers divisible by 3 & 5 and replaces with c, FizzBuzz
#   fizzy_buzzy = nums.map! {|i| i % 3 == 0 && i % 5 == 0 ? c : i}
#   # checks "nums" array for numbers divisible by 3 and replaces with a, Fizz
#   fizzy = fizzy_buzzy.map! {|i| i % 3 == 0 ? a : i}
#   # checks "nums" array for numbers divisible by 5 and replaces with b, Buzz
#   buzzy = fizzy.map! {|i| i % 5 == 0 ? b : i}

#   # converts buzzy array to string and outputs
#   puts buzzy.to_s
# end

# fizzybuzzy

(1..100).each do |x|
 # mod x with both 3 and 5 and stored them into a variable
  n3 = x%3 == 0
  n5 = x%5 == 0
  # discovered case statements for ruby so I implemented them HA
  puts case
    when (n3 and n5) then 'FizzBuzz'
    when n3 then 'Fizz'
    when n5 then 'Buzz'
      else x
  end
end
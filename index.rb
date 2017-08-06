#Create a function that takes a string as an argument and adds the phrase "Only in America!" to the end of it


#function "america" accepts one argument, "a" and concatenates "a" with the string " Only in America"
def america(a)
  a + " Only in America."
end
# this calls/invokes on function "america", passes in "a" a string argument and outputs the result
puts america("Just saw this dude poop in a trashcan outside Dave and Busters...")


#Create a method to find the maximum value in an array of numbers. For instance: [100,10,-1000] should return 100. Do not use Ruby's built-in .max method.

def max_val
  
  num_list = [1,2,3,54,1212,34532,9]

  sorted_list = num_list.sort
  
  i = sorted_list.length - 1
 
  magic_num = sorted_list[i]
  
  puts magic_num
end
max_val

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
def fizzybuzzy
  # converts range to array and stores in variable "nums"
  nums = (1..100).to_a

  # stores words in variables for later retrieval
  a = "Fizz"
  b = "Buzz"
  c = "FizzBuzz"

  # checks "nums" array for numbers divisible by 3 & 5 and replaces with c, FizzBuzz
  fizzy_buzzy = nums.map! {|i| i % 3 == 0 && i % 5 == 0 ? c : i}
  # checks "nums" array for numbers divisible by 3 and replaces with a, Fizz
  fizzy = fizzy_buzzy.map! {|i| i % 3 == 0 ? a : i}
  # checks "nums" array for numbers divisible by 5 and replaces with b, Buzz
  buzzy = fizzy.map! {|i| i % 5 == 0 ? b : i}

  # converts buzzy array to string and outputs
  puts buzzy.to_s
end

fizzybuzzy

 


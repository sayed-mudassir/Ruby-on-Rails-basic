a = [57,82]
def max (arr)
	max = arr[0]
	arr.each do |i|
		if max < i 
			max = i
		end
	end
	max # here we are calling out the max value
end
p max(a)
p max([25,55,89,10])
def min (arr)
	min = arr[0]
	arr.each{|i| min = i if min > i }
	min# here we are calling out the mai value
end
p min(a)
p min([15,68,2,0])
# Q1 find second largest and second smallest num in an array
arr = [12,25,86,1852,45]
a = arr.sort.reverse
b = arr.sort
p "the second largest num in an array are #{a[1]}"
p "the seccond smmalest num in an array are #{b[1]}"
# count the how many times a element is written in a string
def custom_count (str,search_char)
	c = 0
	str.each_char do |i|
		if search_char.include?(i)
			c = c+1
		end
	end
c
end
puts "here is your count"
p custom_count("jkllkjlkjlkjlkjlkjjkl","l")
#----------------------------------------------------------------------------------------------------------------
# find the index of given element of an array
f = "i am very handsome"
def custom_index(str,sub)
	return nil unless str.include?(sub)
	temp = sub.length
	str.chars.each_with_index do |c,i|
		seq = str[i,temp]
		return i if seq == sub
	end
	
end
p custom_index(f,"i")
p custom_index(f,"h")
p custom_index(f,"z")
p custom_index(f,"am")
#______________________________________________________________________________________________________________________
# remove repeted element from an string
name = "thee namee is bondd"
def custom_squeeze(str)
 	new_str = ""
	str.chars.each_with_index do |e,i|
		if e == str[i+1]
			next
		else
			new_str << e
		end
		end
		 new_str
	end

p custom_squeeze(name)
#-----------------------------------------------------------------------------------------------------------------------------------
# delete char from string 
d = "boris raj jack" 
def custom_delete(str,del)
	new_str = ""
	str.each_char do |i|
		unless del.include?(i)
			new_str << i
		end
	end
	new_str
end
p custom_delete(d,"bo")
num = "8,8,7,4,1,1,4,7,75"
a = []
 num.length
num.each_char do |i|
	if i == ","
		next
	end
	 a << i.to_i
end
p a 
[8, 8, 7, 4, 1, 1, 4, 7, 7, 5]

def sort(a)
	l = a.length
	p s = a
	temp = []
	l.times do 
	a.each_with_index do |e,i|
		if l - 1 > i
		if e < a[i+1]
		# a[i], a[i+1] = a[i+1], a[i]
		end
	end
end
	end
	p (a) 
end
# sort(a)
# # +++++++++++++++++++++++++++++++++++++++++++++++++++++
k = [12,45,622,52,86]

	l = k.length
 s = 0 
	l.times do 
	k.each_with_index do |e,i| 
		if l - 1 > i
			if e < k[i+1]  
			 s = e   
			end
		end
	end
end
	p s

	# +++++++++++++++++++++++++++++++++++++++++++++++++++++
k = [12,45,622,522,1080]

max = k[0]
# n = k[0]
k.each_with_index do |e,i|
	 if e > max
	 	max = e
	 end
end
p max
second_max = 0
 k.each do |e| 
 	if e > second_max && e < max 
 		second_max = e
 end
 	end
 	p second_max
# ---------------------------------------------------------------------
num = [1,2,3,2,7,7,8,9]
def custom_uniq(arr)
	 final = []
	 arr.each do |i|
	 	if !final.include?(i)
	 		final << i
	 	end
	 end
	 p final
end
custom_uniq(num)
# ------------------------------------------------------------------------------
c = [nil,nil,0,"james",65,nil,56]
def custom_compact(arr)
	final = []
	arr.each {|i| final << i unless i == nil }
		final
end
p custom_compact(c)
# =============================================================================================
a = ["ab","cd","ef","gh"]
b = [1,2,3,4]
def custom_zip(arr1,arr2)
	final = []
	arr1.each_with_index do |e,i|
	final << [e,arr2[i]]
	end
	final 
end
p custom_zip(a,b)
# ------------------------------------------------------------------------------------------------------------
a = ["no",nil,12,true]
def custom_multiply(arr,n)
	i = 0
	final = []
	while i <= n
		arr.each {|i| final << i } 
		i = i+1
	end
	final
end
p custom_multiply(a,2)
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
a = [1,1,2,2,3,3]
b = [4,4,5,5,6,6]
def custom_combine(arr1,arr2)
	arr1.dup.concat(arr2).uniq
end
p custom_combine(a,b)
# ================================================================================================================
str = "harry potter is a wonder book , this book is written by JKrowlling"
s = str.split(" ")
 def check (arr,x)
	c = 0
	arr.each do |i|
	c = c+1 if i == x
end
	c 
end
p check(s,"wonder")
# =======================================================================================================================================
n = "9335809406"
x = n.chars
p x
a = x.sort!
p a
 min = a[0]
 max = a[-1]
p max.to_i - min.to_i 
# -----------------------------------------------------------------------------------------------------------------------------
a = [1,2,2,3,3,4,5,5,6,8,9,9]
b = [2,5]
l = b.length
def custom_sub(arr1,arr2)
	final = []
	# arr2.each do |i|
	# 	arr1.each { |j| final << j unless arr1.include?(i)}
	# end

	arr1.each do |el|
		final << el if  !arr2.include?(el)
	end

	final
end
p custom_sub(a,b)
a = [1,2,2,2,3,5,6,7]
b = [1,2]
def custom_intersection (arr1,arr2)
	final = []
		arr1.each do |el|
		final << el if arr2.include?(el)
	end

	final.uniq!
end
p custom_intersection(a,b)
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
def vovel(v)

end

word = "elephant"
def check(w)
a = 0
e = 0
i = 0
o = 0
u = 0
vovel = {}
w.chars do |v|
	if v == 'a'
		a = a + 1
	elsif v == 'e'
		e  = e + 1
	elsif v == 'i'
		i+=1
	elsif v == 'o'
		o+=1
	elsif v == 'u'
		u+=1	
	end
 	end
 	arr = [[:a,a],[:e,e],[:i,i],[:o,o],[:u,u]]
 	arr.to_h
end
p check("envelope")
--------------------------------------------------------------------------------------------------------------------
p "chose a string"
	count = 0
4.times do
a = gets.chomp()
	if a == "a"
		p "congrats you won"
		break
	else
		count = count+1
	end
end
if count >= 4
p "you lose"
end
-----------------------------------------------------------------------------------------------------------------------------------
a = {a: 12,b: 123,c: 26}
def get_key_value_from_hash(hash)
	key = []
	value = []
	hash.each do |k,h|
		key << k
		# value << h 
	end 
	pkey 
	p value
end
p get_key_value_from_hash(a)
market = {milk: 10,flour: 250,rice: 120,oil: 60}
kitchen = {milk: 20,dal: 30}
def custom_merge(hash1,hash2)
	new_hash = hash1.dup
	hash2.each {|key,val| new_hash[key] = val }
	new_hash
end
p custom_merge(market,kitchen)
_____________________________________________________________________________________________________________________________________________________________________
string = "once upon a land is far far away"
h = {}
def count(str)
	h = Hash.new(0)# this new method is used to give the default value of hash
	# h = {}
	# h.default = 0 # this an other method for set the default value of hash 
	a = str.split(" ")
	a.each do |el|
	 h[el] += 1
	end
	h

end
p count(string)
-----------------------____________________________________--------------------------------____________________________-----------------------------
fruits = ["apple","mango","banana"]
int = [2,5,6,8,4,69,3]
def custom_each(arr)
	i = 0 
	while i < arr.length
		yield arr[i]
		i += 1
	end
end
len = custom_each(fruits) do |n|
p "the length of fruitsn is #{n.length}"
p 
end
sq = custom_each(int) do |i|
	p " sq of #{i} is #{i**2}"
end
this is how we the custom each  method
_________________________________________________________________________________________________________________________________________________________________________
def custom_yday(number)
	current_date = Time.new(2016,01,01)
	# i = 0
	count = 60*60*20
	until current_date.yday == number
		current_date += count
		# i += 1
	end
	current_date
end
p custom_yday(152)
____________________________________________________________________________________________________________-------------------------------_________________________________--------------________________
def custom_start_with(str,substr)
	s = str.split(" ")
	su = substr.split(" ")
	# l = su.length
	# l.times do 
		count = []
	su.each_with_index do |el,i|
		 if el == s[i]
		 	count << true
		 else
		 	count << false
		 end
	end
	unless count.include?(false)
		return true
	else
		return false
	end
# end
end
p custom_start_with("this is demo","this") # this will check in an array this means it will check a word
# we can perform this program in a different or shorter way
def custom_start_with2(str,substr)# this method is more suitable because it will check each character
	str[0,substr.length] == substr # we are using boolean operator so it will provide boolean values 
end
p custom_start_with2("this is demo","t")
def custom_end_with(str,substr)
	s = str.split(" ")
	su = substr.split(" ")
	# l = su.length
	# l.times do 
		# count = []
	su.each do |el|
		 if el == s[-1]
		 	return true
		 else
		 	return false
		 end
	end
	# unless count.include?(false)
	# 	return true
	# else
	# 	return false
	# end
# end
end
p custom_end_with("this is demo","d")

def custom_end_with2(str,substr)# this method is more suitable because it will check each character
	str[-substr.length..-1] == substr # we are using boolean operator so it will provide boolean values 
end
# p custom_end_with2("this is demo","emo")
# -----------------------------------------------------------------------------------------------------------------------------------------------

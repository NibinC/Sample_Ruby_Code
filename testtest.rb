def perfect(arr)
	len = arr.length
	result =[]
	for i in (0..len-1)
		result.push([arr[i]])
		for j in (i+1..len-1)
			result.push(arr[i..j])
		end
	end
p result
end

#perfect([1,52,7,8])

def rotate_a_matrix(arr)
 result =[]

 cnt =0
 for i in (0..arr.length-1)
 	cnt =0
 	for j in (0..arr.length-1)
    
 		result.push([arr[cnt][i],arr[cnt+1][i],arr[cnt+2][i]])
 		break;
 	end	
 end
 return result
end

def sort(arr)
for i in (0..arr.length-2)
	for j in (i+1..arr.length-1)
		if(arr[j]<arr[i])
		  temp = arr[j]
		  arr[j]=arr[i]
		  arr[i] =temp
		 end
	end
end
p arr
end
p sort([5,3,3,7])
def find_uniq(arr)
	for i in (0..arr.length-1)
		(arr[i]==arr[i+1]) ? arr[i]=nil : arr[i]
	end
	return arr.compact
end

def find_value(arr,val)
	h = Hash.new
	for i in (0..arr.length-1)
		(arr[i]==val) ? (return h[i]=val) : i
	end
	return "not found"
end

# p find_value([1,4,5,6,77,8,5],88)

def reverse_ar(arr)
	len = arr.length-1
	t = len
	for i in (0..len)
		arr<<arr[len]
		len -=1
	end
	 arr.slice(t..len)

end
# p reverse_ar([1,4,5,6,6])

# [*1..6].inject([0,1]){|f|f<<f.last(2).sum}
def palindrome(n)
	# step = Math.sqrt(n).round
	# for i in (2..step)
	# 	(n % i ==0) ? (return "palindrome : #{i}") : i
	# end
	# return "not a palindrome"
	sum =0
	temp =n
	while(n>0)
		sum = sum*10+(n%10)	
		n = n/10
	end
   (sum==temp) ? (return "palindrome") : (return "Not palindrome")
end

def reverse_vowels(str)
	cnt =0
	vowel = ["a","e","i","o","u"]
	 pt = str.split("").select{|e|vowel.include?e}.reverse
	 str.split("").each_with_index do |ind,v|
	 	if(vowel.include?ind)  
	 		str[v]=pt[cnt]
	 		cnt +=1
	 	end
	 end
	 return str
end

def remove_outer_parentheses(str)
	cnt =0
	arr =[]
	result =[]
	str.split("").each do |i|
		arr<<i
	 ("("==i) ? (cnt +=1) : (cnt -=1)
	 	if(cnt == 0)
	 		arr.pop
	 		arr.shift
	 		result <<arr
	 		arr =[]
	 	end
	end
	return result.join
end

def find_max(ar)
	#ar.sort.min
	max = ar[0]
	for i in (1..ar.length-1)
		(ar[i]>max) ? (max=ar[i]) : i
	end
	return max
end
#p find_max([11,2,351,6,6,67,1])

def sort_array_by_parity(a)
    # arr = a.each_with_object(even:[],odd:[]){|ele,mem|
    # 	 mem[(ele.odd?) ? :odd : :even] <<ele
    # 	}

    # 	return  arr[:even]+arr[:odd]
    h = Hash.new{|k,v|h[v]=[]}
    a.each_with_object(h){|(k,v),hash|hash[v]<<k}
end
files = {
  'Input.txt' => 'Randy',
  'Code.py' => 'Stan',
  'Output.txt' => 'Randy',
  'test.shsd' => 'Stan'
 }
# p sort_array_by_parity(files)
def custom_sort_string(s, t)
    ar =[]
    not_ar = []
    temp = t.length
    for i in (0..temp-1)
    	(s.include?t[i]) ?  (ar<<t[i]) : (not_ar<<t[i])  
    	
    end
    ar.sort_by { |e| s.split("").index(e) || Float::INFINITY }
end

p custom_sort_string("kqep","pekeq")
def reverse(x)

	temp = x
   t = x.abs
   sum = 0
   while(t>0)
   	sum = sum*10+(t%10)
   	t = t/10
   end
   return 0 if (sum>(2**32))
   (temp<0) ? (return sum*-1) : (return sum)
end

def find_disappeared_numbers(nums)
    # nums.sort!
    b =  [*1..nums.max] - nums
     return b
end
# p find_disappeared_numbers([1,1,3,7,6,5])

def remove_duplicates(arr)
 # for i in (0..arr.length-1)
 # 	(arr[i]==arr[i+1]) ? (arr[i]=nil) : i
 # end
 # return arr.compact
 arr.group_by{|i|i}.keys
end

def find_max_profit(nums)
 profit =0
 for i in (1..nums.length-1)
 	if(nums[i]>nums[i-1])
 		profit += nums[i]-nums[i-1]
 	end
 end
 return profit

end

def find_duplicates(arr)
	h = Hash.new
	for i in (0..arr.length-1)
		if h[arr[i]]
			return true
		else
			h[arr[i]]=0
		end
	end
	return false
end

def number_of_1_bits(n)
bits =0
map = 1
for i in (0..32)
	if(n & map) !=0
		bits +=1
	end
	map <<=1
end
return bits
end

def hamming_distance(x,y)
	n = x ^ y
	bits = 0
	while(n>0)
		bits += n&1
		n >>=1
	end
	return bits
end

def pascal_triangle(n)

	ar = [1]
	result = [ar]
	n.times do 
	arr =[1]
	for i in (1..ar.length-1)
		arr<<ar[i]+ar[i-1]
	end
	 arr<<1
     result <<arr
     ar = arr

    end
    return result
end

def valid_paranthesis(str)
	stack =[]
	close = {"}"=>"{",")"=>"(","]"=>"["}

	for i in (0..str.length-1)
		if(close.include?str[i])
			top = stack.pop
			if(top!=close[str[i]])
				return false
			end
		else
			stack<<str[i]
		end
	end	
	(stack.empty?) ? (return true) : (return false)
end

def best_time_to_sell(nums)
	maxprofit =0
	minimum = 2**32

	for i in (0..nums.length-1)
		if(nums[i]<minimum)
			minimum = nums[i]
		elsif(nums[i]-minimum > maxprofit)
			maxprofit = nums[i]-minimum
		end

	end
	return maxprofit
end

def house_robber(n)
	house = []
	house[0] = n[0]
	house[1] = [n[0],n[1]].max
	for i in(2..n.length-1)
		house[i] = [n[i]+house[i-2],house[i-1]].max
	end
	return house[n.length-1]
end


def logest_substring(str)
	result =[]
for i in (0..str.length-1)
	cnt =0
	for j in (i+1..str.length-1)
		if(str[i]!=str[j])
			cnt +=1
		else
		break
		end
	end
	result<<cnt	
end
return result.max
end


def str_reverse(str)
left = 0
right = str.length-1
while(left<right)
temp = str[left]
str[left]= str[right]
str[right] = temp
left +=1
right -=1
end
return str

end

def max_subarray(nums)
	first = nums[0]
	result = []
	for i in (1..nums.length-1)
		first = [nums[i],nums[i]+first].max
		result<<first
	end
	return result
end

def house_robber(nums)
	array = []
	array<< nums[0]
	array<< [nums[0],nums[1]].max

	for i in (2..nums.length-1)
		array[i] = [nums[i]-array[i-2],array[i-1]].max
	end
	return array.max

end


def sum_of_subarray(nums)
	first = nums[0]
	result =[]
	for i in (1..nums.length-1)
		first = [nums[i],first+nums[i]].max 
		result << first
	end
	return result

end
# p sum_of_subarray([1,3,4,15])

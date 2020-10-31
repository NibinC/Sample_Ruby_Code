def sort_colors(nums)
   
    	
    			temp = nums.count(0)
    			nums.delete(0)
    			temp.times do 
    				nums<<0
    			end
    		
    			temp = nums.count(1)
    			nums.delete(1)
    			temp.times do 
    				nums<<1
    			end
    		
    			temp = nums.count(2)
    			nums.delete(2)
    			temp.times do 
    				nums<<2
    			end
    		
  
    return nums 
end

def remove_kdigits(num, k)
    result =[]
    i =0
    return 0 if num.length<1
    while((k+i)<=num.length)
   		str =""
   		
   		for j in (0..num.length-1)  
  			
     		if([*i...i+k].include?j) 
     		  next
     		 else
     		 	str = str+num[j]
     		 end
     	end
     i +=1
     result<<str.to_i
    
    end

return result
end

def four_sum(nums, target)
	result =[]
    for i in (0..nums.length-4)
    	for j in (i+1..nums.length-3)
    		for k in (j+1.. nums.length-2)
    			for z in (k+1..nums.length-1)

    				if(nums[i]+nums[j]+nums[k]+nums[z]==target) 
    				sorted_arr = [nums[i],nums[j],nums[k],nums[z]].sort
    				  
    				  (!result.include?sorted_arr) ? (result<<sorted_arr) : z
    				 end
    			end
    		end
    	end
    end
    return result
end	

def daily_temperatures(t)
    result =[]
    
    for i in (0..t.length-1)
  
     
    	cnt =0
    	for j in (i+1..t.length-1)
    		
    		if(t[i]<t[j])
    		  result << cnt+1
    		  break;
    		 else
    		  cnt +=1
    		  end  
    		 if(j == t.length-1)
                 result<<0
             end
    	end
    end
    return result<<0
end

 #p daily_temperatures([55,38,53,81,61,93,97,32,43,78])
 
def remove_duplicates(nums)
    for i in (0..nums.length-1)
        (nums[i]==nums[i+1]) ? (nums[i]=nil) : i
    end
    return nums.compact
end



def rotate(nums, k)
   len = nums.length-1
   for i in (0..k-1)
     nums.unshift(nums[len])
     nums.pop
    end
    return nums	 
end

def find_non_repeating_ele(nums)
 #nums.uniq.select{|i|nums.count(i)==1}
 #p nums.group_by{|i|i}.select{|j,k|k.size==1}.map(&:first)
 p nums.group_by{|i|i}.reject{|k,v|v.count>1}.map(&:first)[0]
 #p nums.find{|i|nums.count(i)==1}
end
#find_non_repeating_ele([2,2,1])
def reverse_arr(arr)
	
	len =arr.length-1
	while(len>=0)
		arr<<arr[len]
		
		len -=1
	end
	
p arr[(arr.length/2)..arr.length-1]
end

def reverse_string(str)
	st =""
	len = str.length-1
	while(len>=0)	
		st +=str[len]
		len -=1
	end
	return st
end

def move_zeroes(nums)
    
    pt = nums.count(0)
    nums.delete(0)
    pt.times { nums<<0}
    return nums
end

def two_sum(arr,target)
h = Hash.new
arr.each_with_index{|value,i|
diff = target-value
if h[diff]
	return [h[diff],i]
else
	h[value] = i
end

}
return -1

end

def count_primes(n)
return 0 if n<1	
 booleans =[]
 count =0
 
 booleans = [*0..n].map{true}
for i in (2..Math.sqrt(n).round)
	j = i*i
	while(j<n)
		booleans[j]= false
		j +=i
	end
end
return booleans[2..n-1].count(true)
 

end
# p count_primes(10000000)


def is_power_of_three(n)
    
    for i in (0..Math.cbrt(n))
    	(3**i == n) ? (return true) : i
    end
    return false
end

def roman_to_int(s)
    result =0
    i =0
   while(i<s.length)
      if(s[i]=="I" && s[i+1] == "V")
          result += 4
          i +=2
      elsif(s[i]=="I" && s[i+1] == "X")
          result += 9
           i +=2
      elsif(s[i]=="X" && s[i+1] == "L")
          result +=40
           i +=2
      elsif(s[i]=="X" && s[i+1] == "C")
          result +=90
           i +=2
      elsif(s[i]=="C" && s[i+1] == "D")
          result +=400
           i +=2
      elsif(s[i]=="C" && s[i+1] == "M")
          result +=900
           i +=2
      elsif(s[i]=="I")
          result +=1
           i +=1
      elsif(s[i]=="V")
          result +=5
           i +=1
      elsif(s[i]=="X")
          result +=10
           i +=1
      elsif(s[i]=="L")
          result +=50
           i +=1
      elsif(s[i]=="C")
          result +=100
           i +=1
      elsif(s[i]=="D")
          result +=500
           i +=1
      elsif(s[i]=="M")
          result +=1000
           i +=1
      end
       
   end
   return result
end

def int_roman(num)
	hsh = {
  "M" => 1000,
  "CM" => 900, "D" => 500, "CD" => 400, "C" => 100,
  "XC" => 90,  "L" => 50,  "XL" => 40,  "X" => 10,
  "IX" => 9,   "V" => 5,   "IV" => 4,   "I" => 1
}

hsh.map{|ltr, val| 
    amt, num = num.divmod(val)
    ltr*amt
}.join

end
p int_roman(1010)
def reverse_string(s)
    len = s.length-1
    result =[]
    while(len>=0)
        result<< s[len]
        len -= 1
    end
  
    return result 
end

def reverse(x)
    num = x.abs
    sum =0
    j =1
    while(num>0)
     i = num%10
     sum = (sum*10)+i	
	 num = num/10
    end
    (x<0) ? (return -1*sum) : (return sum)
end

def first_uniq_char(s)
    
    st = s.split("").group_by{|i|i}.select{|_,v|v.count==1}
     (st.size>0) ? (return s.index(st.first[0])) : (return -1)
end

def is_anagram(s, t)
    tr = s.split("").group_by{|i|i}.sort_by{|k,_|k}.to_h
    tr1 = t.split("").group_by{|i|i}.sort_by{|k,_|k}.to_h
    (tr == tr1) ? (return true) : (return false)
end

def count_and_say(n)
		ar =[1]
		(n-1).times do 
		j =0
    	arr=[]
    	cnt =1
    	while(j<=ar.length-1)
    		
    		   if(ar[j]==ar[j+1]) 
    			 cnt +=1 
    			 j +=1
    			else
 				arr<<cnt<<ar[j]
    			cnt =1
    			j +=1  				
    			end
    		
 		end
    	ar = arr
    	end
    	
    return ar.join

end





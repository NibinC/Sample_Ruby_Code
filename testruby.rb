



def right_shift_array(a,d)
	ar = [*1..a]
	ar_length = ar.size
	t = d / ar_length
	
	 ar[d,ar_length].reverse.each do |i|
	 	ar.unshift(i)
	 	ar.pop
	 end
return ar

i=0
while(i<ar_length)

    print ar[i]
    print " "
    i =i+1
end
end

#p right_shift_array(5,4)

def print_number(n)
i =1
 while(i<=n)
	if(i%5==0 && i%3==0)
	  puts "FizzBuzz"
	 elsif(i%5==0)
	  puts "Buzz"
	 elsif(i%3==0)
	  puts "Fizz"
	 else
	  puts i
	end
	i =i+1
end
end
#print_number(9)


def filledOrders(order, k)
    # Write your code here
    sum_ar =0
    arr =[]
    order.sort.each do |i|
    	sum_ar = sum_ar+i
       
       (sum_ar<=k) ? arr<<i  : (return arr.length) 
    end
    return arr.length
end

#p filledOrders([25,2,5],40)


def getMaxArea(w, h, boundaryType, boundaryDist)
    # Write your code here
    total_area = w*h
    result_arr =[]
     if(boundaryType[0]==0)
        new_height = h-boundaryDist[0]
        new_area = w*boundaryDist[0]
        result_arr<<new_area 
        if(boundaryType[1]==1)
          new_area = (w-boundaryDist[1])*boundaryDist[0]
          result_arr<<new_area
        else
          
          new_area = w*(boundaryDist[0]-boundaryDist[1])
          result_arr<<new_area
        end

     else 
        new_width = w-boundaryDist[0]
        new_area = h*new_width
        result_arr<<new_area
        if(boundaryType[1]==0) 
          new_w = w-boundaryDist[0]
          new_area = new_w*boundaryDist[1]
          result_arr<<new_area
         else
          
         	new_area = h*(w-(boundaryDist[0]+boundaryDist[1]))
         	result_arr<<new_area
         end
     end

return result_arr
end


#p getMaxArea(4,4,[0,1],[2,1])

def iterative_factorial(n)
  (1..n).inject(:*)
end

#p iterative_factorial(4)

def recursive_factorial(n)
  # Base case
  return 1 if n <= 1

  # Recursive call
  n * recursive_factorial(n-1)
end


class Car
attr_accessor :name,:price

def mem
  p	"car #{name} and its cost is #{price}"
end
end

def add(m)
i =1
j =1 
p i,j
  
    m.times {sum =i+j
   		p sum
   		i=j
   		j =sum
   		sum=0	}
   		
 
end

def fib(n)
  ar =[]

  return n if n < 2
   fib(n-1) + fib(n-2)
  
end
 #(1..20).each { |i| puts fib(i) }



combination = ->(i) do 
   n=i
   nCr =1
     while(n>1)
    nCr= nCr*(n)
    n = n-1
    end

    ->(e) do 
    	r =e
        t1 =1
        while(r>1)
        t1 = t1*r
        r = r-1
        end

        nu = (i-e)
        t2 =1
        while(nu>1)
        t2= t2*nu
        nu = nu-1
        end
        
        return nCr/(t1*t2)
        end
end
=begin
n = 4
r = 2
nCr = combination.(n)
puts nCr.(r)
=end

#p 1.upto(Float::INFINITY).lazy.first(5)
#p (1..5).to_a.map{|x|x**2}

power_array = ->(x,y) {(1..y).to_a.map{|i|i**x}}
#p power_array.(2,5)


pal_arr = ->(n) do
    i=2
    arr =Array.new 
arr<<2
while(arr.length < n)
  if(((i%2) != 0) )
    if(i == i.to_s.split('').reverse.join.to_i)
        q = Math.sqrt(i)
        j =2
        arr<<i
        while(j<=q) 
          if (i%j == 0)
            arr.delete(i)
          break
          end
          j = j+1
         end
          
    end
    end
    i = i+1
    
end
    return arr
 end
#p Time.now
#p pal_arr.(20)
 
#p Time.now



def in_number(words)
  name = {
       
       "ni#nety"=>90,
       "eighty"=>80,
       "seventy"=>70,
       "sixty"=>60,
       "fifty"=>50,
       "forty"=>40,
       "thirty"=>30,
       "twenty"=>20,
      "nineteen"=>19,
      "eighteen"=>18,
      "seventeen"=>17, 
      "sixteen"=>16,
      "fifteen"=>15,
      "fourteen"=>14,
      "thirteen"=>13,              
      "twelve"=>12,
       "eleven"=>11,
       "ten"=>10,
       "nine"=>9,
      "eight"=>8,
       "seven"=>7,
       "six"=>6,
       "five"=>5,
      "four"=>4,
       "three"=>3,
      "two"=>2,
      "one"=>1
    }
return words.split.inject(0){|s,v|s+name[v]}

end


def merge_single_list(orig_st,add_st,del_st)
  result_ar =[]
  new_ar = (orig_st | add_st)-del_st
  h = Hash.new
  new_ar.map{|i|h[i]=i.length}
  pt = h.sort_by {|key, value| value}.reverse.to_h
  pt1 = pt.group_by{|k,v| v}
  
   pt1.each do |k,v|
     ar =Hash.new
     pt1[k].each do|k|
     ar[k[0]]=in_number(k[0])
   end 
      
     tem = ar.sort_by{|k,v|v}.reverse.to_h
      tem.each do |ke,val|
        result_ar<<ke  
      end 
          
   end
   return result_ar
   
end

p  merge_single_list(['one','two','three','seven','eight','fifteen'],['eleven','twelve','one','two','five','six'],['two','five'])
 




 def fib(n)
 	if(n<2)
 		return n
 	end
    fib(n-1)+fib(n-2)
 end
 # (1..20).each do |i|
 # 	puts fib(i)
 # end

  def fib(n)
  	a=1
  	b=1
  	i=0
  	while(i<n)
  		c=a+b
  		a=b
  		b=c
  		
  		i +=1
  	end
  return b
  end  	

def time_conversion(s)
  t= s.split(":")
  pt = s.split(":").first.to_i
  pt1 = s.split(":").last.delete("0-9")
  pt2 = s.split(":").last.delete("^0-9")
  if(pt==12 && pt1=="PM")
  	return "00:00:00"
  elsif(pt==12 && pt1=="AM")
  	return "12:00:00"
  else
  	t[0]=(pt+12).to_s
  	t[2]= s.split(":").last.delete("^0-9")
  	t
  end
  return t.join(':')
end


def factorial(n)
	if(n<2)
		return n
	end
	n*factorial(n-1)
end

def sequence_sum(begin_num, end_num, step)
  while begin_num <= end_num do
    return begin_num + sequence_sum(begin_num + step, end_num, step)
  end
  return 0
end

#p sequence_sum(2,2,2)

def linear_seatch(n)
 i =0
  while(i<n.length-1)
  	if(n[i]>n[i+1])
  		n[i+1]=n[i]
  		n[i]=n[i+1]
  	end
  	i +=1
  end
end



def min_array(n)
	i =0
		j=i+1
		min =n[i]
		while(j<=n.length-1)
			if(min>n[j])
				min =n[j]
			end
			j +=1
		end
		return min
end
def selction_sort(t)
	ar =[]
	  i =0
	  len =t.length
		
	  while(i<len-1)	
	  min_v = min_array(t) 
	  t.count(min_v) .times {ar<<min_v}
	  t.delete(min_v)
	  i +=1
	  end
 	  return ar 
end

def binary_search(ar,n)
	len = ar.length-1
	
	i=0
	while(i<=len)
		
	step = i+(len-i)/2
	if(ar[step]==n)
		return step
	end 
		if(ar[step]<n)

		i = step+1
		else
 		len = step-1
		end
	end
	return -1
end
ar = [10, 20, 80, 30, 60, 50,110, 100, 130, 170]
#p binary_search(ar,170)
# if t==-1
# 	p "not present"
# else
#     p t
# end

ar1 =[4,3,17,9,5,11,44,77,111,222,445,233,4441,34,322,122]
#p selction_sort(ar1)

def bubble_sort(n)

	y =0
	while(y<=n.length-2)
		if(n[y]>n[y+1])
			temp=n[y+1]
			n[y+1]=n[y]
			n[y]=temp
			
		end
		y +=1
	end
	i=0
	while(i<=n.length-2)
		if(n[i]>n[i+1])
		bubble_sort(n)
		end
		i +=1
	end
	
	return n
end
ar1 = [23,4,5,1,78,3,34,70]
#p bubble_sort(ar1)
	

def gcd(a,b)
	if(a==0)
	 return b
	end
	
	return gcd(b%a,a)

end
#p gcd(15,5)

def lcm(a,b)
	return (a*b)/gcd(a,b)
end

# a*b = lcm(a,b)*gcd(a,b)
def sum_of_sub_array(n)
   pdt =1
   i =0
   len =n.length
   while(i<len)
   	j=i
   	while(j<len)
   		k=i
   	  while(k<=j)
   	  	pdt = pdt*n[k]
   	  	k +=1
   	   end
   	 j =j+1
   	end
   	i =i+1
   end
return pdt
	

end
ar =[10,3,7]
#p sum_of_sub_array(ar)
 #ar1.each_slice(2).to_a

 
 def rotate_a_matrix(a,b,c)
 	i=0
 	len = a.length
 	re_ar =[]
 	while(i<len)
 		ar =[]
 		ar<<a[i]<<b[i]<<c[i]
 		re_ar<<ar
 	 i +=1
 	end
 	return re_ar
 end
#p rotate_a_matrix([1,2,3],[3,2,1],[1,3,1])


def perfect(ar)
	len = ar.length
#	x = 2**len
	i =0
	result =[]
	while(i<len)
        j =i
        
        while(j<len)
        	k =i
        	ar2 =[]
        	while(k<=j)
               ar2<<ar[k]
               k +=1
            end
            result<<ar2
            j +=1
        end
      
        i +=1
     end

     return result
   
end
#p perfect([1,3,5])



def diagonalDifference(arr)
    # Write your code here
    first_diag =0
    secnd_diag =0
    	j =0
    	len = arr[1].length-1
    arr.each do |i|
    		
    		secnd_diag +=i[len]
     		first_diag += i[j]
     		
     		len -=1
     		j +=1
     end

    return (first_diag-secnd_diag).abs
end
# ar = [[1,2,3],[2,3,5],[3,5,6]]
# p diagonalDifference(ar)

def plusMinus(array)


puts "%.4f" % (array.select { |n| n > 0 }.length.to_f / array.length)
puts "%.4f" % (array.select { |n| n < 0 }.length.to_f / array.length)
puts "%.4f" % (array.select { |n| n == 0 }.length.to_f / array.length)
end

#plusMinus([1,1,0,-1,-1])
def staircase(n)
	i =0
	
	while(i<n)
		j =i
		while(j<n-1)
			print "  "
			j +=1
		end
		 k =0
		   while(k<=i)
		   print "#"
		   print " "
		   k +=1
		   end
		   print "\n"
	    i +=1
	 end
end

#staircase(8)

def depth_first_search(adj_matrix, source_index, end_index)
  node_stack = [source_index]

 loop do
    curr_node = node_stack.pop
 	
    return false if curr_node == nil
    return true if curr_node == end_index

    children = (0..adj_matrix.length-1).to_a.select do |i| 
      adj_matrix[curr_node][i] == 1
    end
    
    node_stack = node_stack + children
    p node_stack
  end
end

adj_matrix = [
  [0, 0, 1, 0, 1, 0],
  [0, 0, 1, 0, 0, 1],
  [0, 0, 0, 1, 0, 0],
  [0, 0, 0, 0, 1, 1],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0]
]

#p depth_first_search(adj_matrix, 0, 5)
def parse_time(time)
    hours,minutes,seconds,modifier = time.delete(":").scan(/\w{2}/)
    return [correct_hours(hours,modifier),minutes,seconds].join(':')
end
def correct_hours(hours,modifier)
    if modifier == "PM" && hours.to_i != 12 
        (hours.to_i + 12)
    elsif hours.to_i == 12 and modifier == "AM"
        hours = "00"
    else
        hours
    end
end

#pt,m,n = "06:10:20PM".delete(":").scan(/\w{2}/)
#p parse_time("12:10:20PM")
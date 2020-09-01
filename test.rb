
x=17
n =2
nums = []
i = 1

while i**n <= x
    nums.push(i**n)
    i += 1
end

def M(numsList, x)

    if x < 0
        return 0
    end
    if x == 0
        return 1
    end
    sum = 0
   
    for i in 0..numsList.length-1
    	
        
        sum += M(numsList[i+1..(numsList.length - 1)], x-numsList[i])
        p sum
    end
    
    return sum
end

# puts M(nums,x)



#pt =[1,2,3,4]
#p pt[1..3]

def powerSum(x, n,i=1)
  return 0 if x < 0
    return 1 if x == 0
    count = 0
   
    (i..Math.sqrt(x)).each do |j|
    
        count += powerSum(x - (j ** n), n, j + 1)
        p count
    end

    return count

end


def fib(n)
	ar =[]
	

	if n==1 or n==2
		return 1
	end
	ar[0]=1
	ar[1]=1
	for i in (2..n-1)	
	ar[i]= ar[i-1]+ar[i-2]
    end
    
    return ar
end
#p fib(10)

def ks(n,c)
	
w =[1,1,4,2,5]
v =[5,3,5,3,2]
	if(n==0 or c==0)
		result =0
	elsif(w[n]>c)
		result =ks(n-1,c)
	else
		temp1 =ks(n-1,c)
		temp2 = v[n]+ks(n-1,c-w[n])
		result = max(temp1,temp2)
	end
	return result
end

class Node 
	attr_reader :value
	attr_accessor :left,:right
	def initialize(value=nil)
		@value =value
		left=nil
		right =nil
	end
end
class BinarySearchTree
	attr_accessor :root_node
	def initialize(root_value=nil)
		@root_node=Node.new(root_value)
	end
end

def cellCompete(states, days)
    # WRITE YOUR CODE HERE 
    new_ar =states 
    new_ar.unshift(0)
    new_ar.push(0)
    @temp = new_ar
    @zero =[]
    @ini =[1,1,1,1,1,1,1,1]
    def chck(ar)
    	
        j=1
        while(j<=8)
        	p ar[1]	
         if(ar[j-1]==ar[j+1])
     		@zero.push(j)
         end 
         j +=1
         p ar[1]
        end 
        @zero.each do |i| 
        	@ini[i]=0
        end
       
        return @ini  
    end 
    i =1
    while(i<=days)
     @temp = chck(@temp)
     i +=1
    end
    @temp.delete_at(states.length-1)
    @temp.delete_at(0)
    return @temp
end


def twosum(time,len,ar)
  maximum = [0]
  x =0
  while(x<len)
  	y =x+1
  	while(y<len)
  		maximum = (maximum<<ar[x]+ar[y])
  		temp = maximum.max
  		y +=1
  	end
  	x +=1
  end
  i =0
  while(i<len)
     j =i+1
     while(j<len)
     	if(ar[i]+ar[j]==temp) 

     		return i,j
    	end
     	j +=1
     end

  	i +=1
  end

end
#t,t1 = twosum(110,6,[20,70,90,30,60,110])
#p t 
#p t1

def IDsOfmovies(flightDuration, numMovies, movieDuration)
    # WRITE YOUR CODE HERE
   movieDuration.sort
	l =0
	r = numMovies-1
	result =[]
	while(l<r)
		if(movieDuration[l]+movieDuration[r]==flightDuration-30)
			result.push(l)
			result.push(r)
			return result
		elsif (movieDuration[l]+movieDuration[r]<flightDuration-30)
			l -=1
		else
			r -=1
		end
	end
	return result
end

def relative_sort_array(arr1, arr2)
   
end
ar =[2,3,1,3,2,4,6,7,9,2,19]
ar1 =[2,1,4,3,9,6]
#p relative_sort_array(ar,ar1)

def climbingLeaderboard(scores, alice)
att = scores.uniq
h = Hash.new
(1..att.length).each do |i|
h[att[i-1]]=i
end

len = h.keys.length

h[0]=h.length+1
result =[]
first = h.keys[0]

alice.each do |i|

	if(h.keys.include?i)
		result<<h[i]
	elsif (i>first)
		result<<1
	else
	
    y =0
    while(y<len)

		if(i<h.keys[y] and i>h.keys[y+1] )
			if(h[h.keys[y+1]]==len+1)
				result<<len+1
			else	
			result << h[h.keys[y+1]]
			end
		end
		y +=1
	end
	end

end

return result
end

def climbingLeaderboard1(scores, alice)
	scores = scores.sort.reverse.uniq!

	first_r = scores.first
	last_r = scores.last
	len = scores.length
	result =[]

	alice.each do |i|
		# if(scores.include?i)
		# 	result<<scores.index(i)+1
		# elsif(i<last_r)
		# 	result<<scores.index(last_r)+2
		# elsif(i>first_r)
		# 	result<<scores.index(first_r)+1
		# else
		# 	val =scores.select{|j|j<i}.first
		# 	result<<scores.index(val)+1
		# end
   while scores && scores.last && scores.last <= i
        #puts "scores.last: #{scores.last}"
        scores.pop

    end
#    p scores
    if scores 
        result<< scores.count + 1
    else
        result<<1
    end
	end
return result
end
s =[100,100,50,40,40,20,10]
a =[5,25,50,120]
#p climbingLeaderboard2(s,a)
def extraLongFactorials(n)
return 1 if n < 2

  # Recursive call
  n * extraLongFactorials(n-1)

end

def appendAndDelete(s, c, k)
t = s.split('')
t1 = c.split('')

if(t.length+t1.length<=k)
	return 'Yes'
end
i =0
cnt =0
while(i<t.length)
if(t[i]==t1[i])
  cnt +=1
 else
 	break
 end
i +=1
end

len = t[cnt,t.length-1].length

len1 = t1[cnt,t1.length-1].length
if(t.uniq==t1.uniq)
	return (len+len1<=k) ? "Yes" : "No"
else	
return (len+len1==k) ? "Yes" : "No"
end
end
#p appendAndDelete("zzzzz","zzzzzzz",4)
def squares(a, b)
	i = Math.sqrt(a).ceil
	
	j = Math.sqrt(b).floor
	p (i..j).to_a.count

end

def cutTheSticks(arr)
    
    until (arr.length==0)
    m = arr.min
    
    arr.map!{|i|i-m}
    
    p arr.length
    arr.delete(0)
    
    i +=1
    end

end
#cutTheSticks([5,4,4,2,2,8])

def maxSubsetSum(arr)
	len = arr.length 
	i =0
	result =[]
	while(i<len-2)
		j =i+2
		ar =[]
		ar<<arr[i]
		while(j<len)
			ar <<arr[j]
		    j +=2
		end
		result<<ar
		i +=1
	end
	maximum = result.map{|i|i.sum}.max

	i =0
	 while(i<len-2)
	 	j = i+2
	 	ar = []
	 	ar <<arr[i]
	 	while(j<len)
	 		ar<<arr[j]
	 		if(maximum<ar.sum)
	 			maximum =ar.sum
	 		end
	 		ar.pop
	 		j +=1
	 	end
	 	i +=1
	 end
	 return maximum
end

#p maxSubsetSum([-2,1,3,-4,5])

def fibn(n)
	ar =[]
if(n<2)
	return n
end
ar[0]=1
ar[1]=1
for i in (2..n-1)
		ar[i]= ar[i-1]+ar[i-2]
end
return ar
end
#p fibn(80000)

def fibn1(n)
	ar =[1,1]
	
	i =1
	j=1
	y =2
	while(y<n)
			c= i+j
			i =j
			j =c
			ar<<c	
			y +=1
			
	
	end
return ar[n-1]

	end

#p fibn1(80000)

def increment_char(char)
 return 'a' if char == 'z'
 char.ord.next.chr
end

def increment_by_13(str)
 conc = []
 tmp = ''
 str.split('').each do |c|
   tmp = c
   13.times.map{ |i| tmp = increment_char(tmp) }
   conc << tmp
 end
 conc.join('')
end

# #p increment_by_13("")
# result =[]
# "wb bb".split(" ").each do |i|

# ar =	i.split("").map{|j|	j.ord+13}
	
#       result<<ar.map{|k|if(k>122) then (96+(k-122)).chr else k.chr end}.join

# end
# p result.join(" ")

def find_target(root, k)
	len = root.length 
i =0
while(i<len-1)
	j = i+1
	while(j<len)
		if(root[i]+root[j]==k)
			return true
		end
		j +=1
	end
	i +=1
end
    
end
#p find_target([5,3,6,2,4,7],9)

class Parent
  @@things = []
  def self.things
    @@things
  end
  def things
    @@things
  end
end

class Child < Parent
  
end

Parent.things << :car
Child.things  << :doll
mom = Parent.new
dad = Parent.new

# p Parent.things #=> [:car]
# p Child.things  #=> [:doll]
# p mom.things    #=> [:car]
# p dad.things    #=> [:car]
class Person
def initialize
	puts "fdshfj"
end
attr_reader :name
attr_writer :name

	def say
		puts "hello"
		for i in (1..5)
			p yield(i)
		end
	end
 private
    def p_m
    	puts "Private"
    end
 protected 
    def pro_m
       puts "protected method"
     end
 end

 class Test <Person 
   def publ_m
   	 pro_m
   end
  end

pt = Person.new
# pt1 =Person.new

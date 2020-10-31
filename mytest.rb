
def stringify(num)
hah = {1000=>"Thousand",100=>"Hundred",50=>"Fifty",20=>"Twenty",19=>"Ninteen",3=>"Three",2=>"Two",1=>"One"}
pt = hah.map{|k,v|
amt,num = num.divmod(k)
[amt,hah[k]]
}.reject{|i|i[0]==0}

result = ""
for i in (0..pt.length-1)
	if(pt[i][0]!=1)
		result += hah[pt[i][0]]+pt[i][1]
	else
		result += pt[i][1]
	end
	result +=" "
end
return result
end

 
# p stringify(123)

class Private_Mathod

def initialize count =0
	@count = count+1
end
 
def call_me
puts "call me method is called #{@count} times"
end

end

# pt = Private_Mathod.new
#  pt1 = Private_Mathod.new
# # pt2 = Private_Mathod.new

# pt.call_me
# pt1.call_me
# # pt2.call_me
# # pt.call_me


def str_reverse(str)
	t = str.dup
	left = 0
	right = str.length-1
	while(left<right)
		temp = str[right]
		str[right] = str[left]
		str[left] = temp
		left +=1
		right -=1 
	end
	(str==t) ? (return "Palindrome") : (return "Not Palindrome")
end

p str_reverse("dsd")


 









def reorder_log_files(logs)
    dig_log =[]
    lett_log =[]
    for i in (0..logs.length-1)
        if(logs[i].split[1].to_i.to_s== logs[i].split[1])
            lett_log<<logs[i]
        else
            dig_log<<logs[i] 
        end
    end
    for i in (0..lett_log.length-1)
       lett_log[i].split[1..lett_log.length-1].sort.join
    end
    return dig_log+lett_log
end

#p reorder_log_files( ["dig1 8 1 5 1","let1 art can","dig2 3 6","let2 own kit dig","let3 art zero"])
def generate_parenthesis(n)

   array =["()"]
   res =[]
for i in (1..n-1)

 for j in (0..array.length-1)
 for i in (0..array[j].length-1)
 	r = array[j][0..i]+"()"+array[j][i+1..array[j].length-1]
 	(!res.include?r) ? (res<<r) : i
 end
end
array = res
res =[]
end
return array
end

 # generate_parenthesis(3)
#["((()))","(()())","(())()","()(())","()()()"]

def min_cost_climbing_stairs(cost)
   

    f = 0
    for i in (2..cost.length-1)
     f = f + [cost[i-1],cost[i-2]].min
        
    end
    return f
end


def longest_palindrome(s)
return s if s.length<2
	result =[]
	i =0
	cnt =0
	str =""

for i in (0..s.length-1)
	str += s[i]
	for j in (i+1..s.length-1)
		str += s[j]
		(str.reverse== str) ? (result<<str) : j 
	end
	str = ""
end
h = Hash.new
if(result.empty?)
	return s[0]
else
result.uniq.map{|i|h[i.length]=i}
return h.sort_by{|k,_|k}.max[1] 
end
end
#p longest_palindrome("ab")



def mytestdemp
p "fdhf"
end

p mytestdemp
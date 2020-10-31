def two_sum(arr,target)
h = Hash.new
for i in (0..arr.length-1)
 diff = target-arr[i]
 if h[diff]
 	return ([h[diff],i])
 else
  h[arr[i]]=i	
 end	
end
return -1

end


def count_primes(n)
	booleans = [*0..n]
	for i in (2..Math.sqrt(n))
		j = i*i
		while(j<=n)
			booleans[j] =false
			j +=i
		end
	end
 p booleans[2..n-1].reject{|i|i==false}
end


def is_valid_paranthesis(str)
result =[]
cl_braces = {"}"=>"{",")"=>"(","]"=>"["}
for i in (0..str.length-1)
	if(cl_braces.include?str[i])
		top = result.pop
		if(top!=cl_braces[str[i]])
			return false
		end
	else
		result<<str[i]
	end
end
	(result.empty?) ? (return true) : (return false)

end

# p is_valid_paranthesis("(([()]))")


def find_pascal_triangle(n)
result =[[1]]
array =[1]
n.times do 

temp =[1]

for i in (1..array.length-1)
 temp<<array[i-1]+array[i]
end
temp <<1
array = temp
result << temp
end
return result
end

# p find_pascal_triangle(5)


def climb_stairs(n)
    return 1 if n==1
    dp = []
    dp[1]=1
    dp[2]=2
    for i in (3..n)
        dp[i] = dp[i-1]+dp[i-2]
    end
    return dp[n]
end
# p climb_stairs(4)

def max_profit(prices)
    min_value = 2**31
    maxprofit =0
   for i in (0..prices.length-1)
        if(prices[i]<min_value)
            min_value = prices[i]
        elsif(prices[i]-min_value > maxprofit)
            maxprofit = prices[i]-min_value
        end
   end
    return maxprofit
end


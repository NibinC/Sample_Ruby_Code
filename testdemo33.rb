

#####################################
def max_profit(prices)
max_profit =0
    for i in (1..prices.length-1)
       if(prices[i]>prices[i-1])
           max_profit += prices[i]-prices[i-1]
       end
    end
    return max_profit
end
######################################
# p max_profit([1, 7, 2, 3, 6, 7, 6, 7])

# p [*1..10].inject([0,1]){|f|f<<f.last(2).sum}
def contains_duplicate(nums)
    h = Hash.new
    return false if(nums.length<1)
    for i in (0..nums.length-1)
       if(h[nums[i]])
           return true
       else
           h[nums[i]]=0
       end
    end
    return false
end

def two_sum(nums,target)
    h = Hash.new
    for i in (0..nums.length-1)
        diff = target-nums[i]
        if h[diff]
            return [h[diff],i]
        else
            h[nums[i]]=i
        end
    end
    return -1
end

def reverse_string(s)
   left =0 
    right =s.length-1
    while(left<right)
       temp = s[left]
        s[left]=s[right]
        s[right] =temp
        left +=1
        right -=1
    end
    return s
end


def count_say(n)
    ar =[1]
    (n-1).times do
    arr =[]
    cnt =1
    for i in (0..ar.length-1)
        
        if(ar[i]==ar[i+1])
            cnt +=1
        else
            arr<<cnt<<ar[i]
            cnt =1
        end
    end
    ar = arr
    end
    return ar.join
end


def count_primes(n)
    ar = [*0..n]
    for i in (2..Math.sqrt(n).round)
        j = i*i
        while(j<=n)
            ar[j]=nil
            j +=i
        end
    end
    return ar[2..n].count{|i|i!=nil}
end

def power_3(n)
    for i in (0..Math.cbrt(n))
        if(3**i == n)
            return true
        end
    end
return false
end

def int_to_roman(n)
        hsh = {
  "M" => 1000,
  "CM" => 900, "D" => 500, "CD" => 400, "C" => 100,
  "XC" => 90,  "L" => 50,  "XL" => 40,  "X" => 10,
  "IX" => 9,   "V" => 5,   "IV" => 4,   "I" => 1
}
hsh.map{|k,v|
    amt,n = n.divmod(v)
    k*amt
}.join
end

def hamming_distance(x, y)
    n = x ^ y
    bits = 0
    while(n>0)
        bits += n & 1
        n >>=1
    end
    return bits

end
def reverse_bits(n)
    ret = 0
    power = 31
    while(n>0)
       ret += (n & 1) << power
        n = n >>1
        power -=1
    end
    return ret
end

def convert_to_binary(integer)
  binary = []
  while integer > 0
    binary << integer % 2
    integer /= 2
  end
  binary.reverse.join.to_i
end
# p convert_to_binary(5)

def pascal_triangle(num_rows)
    return [] if num_rows<1
    return [[1]] if num_rows==1
     result = [[1]]
    arr =[1]
    (num_rows-1).times do
    ar =[1] 
    for i in (1..arr.length-1)
        ar<<arr[i-1]+arr[i]
    end
    ar<<1
    result<<ar
    arr = ar
    end
    return result
 end
#p pascal_triangle(6)
def is_valid_parenthesis(str)
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

def missing_number(nums)
 
    ar =[*0..nums.max]-nums
    if(ar.empty?)
    return nums.max+1 
    else
    return ar
    end
end

def hamming_weight(n)
  bits =0
  mask = 1
    for i in (0..32)
       if((n & mask) !=0)
           bits +=1
       end
        mask <<=1
    end
    return bits
    
end
#### count the number of 1 bits 
# p hamming_weight(00000000000000000000000000001011)



def rob(nums)
  house =[]
  house[0] = nums[0]
  house[1] = [nums[0],nums[1]].max
  for i in (2..nums.length-1)
    house[i] = [nums[i]+house[i-2],house[i-1]].max
  end
  return house[nums.length-1]
end

p rob([ 1, 3, 4, 4, 3, 3, 7, 2, 3, 4, 5, 1 ])

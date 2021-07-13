def unique_in_order(arg)
  arr = []
  if arg.class != Array
    arg = arg.squeeze
    arg = arg.split('')
    arr.push(arg)
  else arg.class == Array
    arg.each_with_index {|x,i| arr << x if arg[i-1] != x || i == 0}
  end
  arr.flatten  
end

p unique_in_order('AAAABBBCCDAABBB')
p unique_in_order('ABBCcAD') 
p unique_in_order([1,2,2,3,3])
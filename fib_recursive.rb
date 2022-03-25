def fibs_rec(num)
  return [0, 1] if num <= 2

  p num
  a = fibs_rec(num - 1) # first return => a = [0,1]
  a << a[-1] + a[-2]
  p a
end

fibs_rec(5)

# Using iteration, write a method
# fibs which takes a number and returns an array containing that many numbers from the fibonacci sequence.
# returns [0,1,1,2,3,5,8,13]
def fibs(num)
  first = 0
  second = 1
  arr = [0, 1]
  (num - 2).times do |_n| # num -2 because we already have 2 element inside the array
    arr << arr[-1] + arr[-2]
  end
  p arr
end

fibs(5)

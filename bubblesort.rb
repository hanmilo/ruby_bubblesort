# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

def recursive_sort (array_sort)
  array_sorted = array_sort
  array_hold = []
  index0 = 0
  index1 = 1
  while index1 <= array_sort.length do
    array_hold = [array_sorted[index0], array_sorted[index1]].minmax { |value1, value2|
      value1 <=> value2
    }
    index0 += 1
    index1 += 1
  end
  return array_hold
end

def bubble_sort(array_sort)
  array_sorted = recursive_sort(array_sort)
  return array_sorted
end

p bubble_sort([4,3,78,2,0,2])
# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

def recursive_sort (array_sort)
  array_sorted = array_sort
  array_hold = []
  index0 = 0
  index1 = 1
  while index1 <= array_sort.length do
    array_hold[index0] = [array_sorted[index0], array_sorted[index1]].min { |value1, value2|
      value1 <=> value2
    }
    array_hold[index1] = [array_sorted[index0], array_sorted[index1]].max { |value1, value2|
      value1 <=> value2
    }
    array_sorted.push(array_hold)
    index0 += 1
    index1 += 1
  end
  return array_sorted
end

def bubble_sort(array_sort)
  array_sorted = recursive_sort(array_sort)
  return array_sorted
end

p bubble_sort([4,3,78,2,0,2])
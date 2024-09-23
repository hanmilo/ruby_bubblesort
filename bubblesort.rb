# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

def recursive_sort (array_sort) # focuses on 1-pass of bubble sort
  array_hold = []
  index0 = 0
  index1 = 1
  while index1 < array_sort.length do
    array_hold[index0, index1] = [array_sort[index0], array_sort[index1]].minmax { |value1, value2| # bubble sort 'array_sort' at 2 sequential values at a time and output in ascending order
      value1 <=> value2
    }
    array_sort[index0] = array_hold[index0]
    array_sort[index1] = array_hold[index1]
    index0 += 1
    index1 += 1
  end
  return array_sort
end

def bubble_sort(array_input)  # checks and trigger if addition passes of bubble sort are needed
  array_compare = array_input.dup # .dup unlinks the 'array_compare' from the 'array_input' by duplicating
  until array_input == recursive_sort(array_compare) do # compares with the 'recursive_sort' ahead to check if additional sorting is needed
    recursive_sort(array_input)
  end
  return array_input
end

p bubble_sort([4,3,78,2,0,2])
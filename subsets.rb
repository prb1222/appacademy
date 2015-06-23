def subsets(array)
  result = [[]]
  array.each do |entry|
    result += duplicate(result)
    result[result.length/2..-1].each do |entry1|
      entry1 << entry
    end
  end
  result
end

def duplicate(array)
  array.map{|entry| entry.dup}
end

#p subsets([1,2,3])

def subsets_in_common(arr1, arr2)
  subsets1 = subsets(arr1)
  subsets2 = subsets(arr2)
  subsets1.select{|entry| subsets2.include?(entry)}
end

p subsets_in_common([1,2,3], [1,2,3])

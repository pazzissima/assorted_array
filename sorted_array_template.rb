class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    @internal_arr = []
    input_arr.each {|ele| add ele}

    # Fill in the rest of the initialize method here.
   
    # What should you do with each element of the incoming array?
  end

  def add(new_ele)
    # Hint: Use the Array#insert method.
    index = first_larger_index(new_ele)
    @internal_arr.insert(index, new_ele)

    #raise NotImplementedError.new("You need to implement the add method!")
  end

  def size
    @internal_arr.size
  end

  def [](index)
    # raise NotImplementedError.new("You need to implement the [] method!")
    @internal_arr[index]
  end



  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size)

  if start_ind >= end_ind
    return start_ind
  end

    mid_ind = ((end_ind + start_ind)/2)
    mid_ele = @internal_arr[mid_ind]

  if mid_ele == target
    return mid_ind
  elsif mid_ele > target
    return first_larger_index(target, start_ind, mid_ind)
  elsif
    mid_ind < target
    return first_larger_index(target, (mid_ind + 1), end_ind)
  end
    # raise NotImplementedError.new("You need to implement the first_larger_index method!")
  end



  def index(target, start_ind = 0, end_ind = @internal_arr.size)
  if start_ind >= end_ind
    return nil
  end
    mid_ind = ((end_ind - start_ind)/2) + start_ind
    mid_ele = @internal_arr[mid_ind] 

 if mid_ele == target
    return mid_ind
  elsif mid_ele > target
    return index(target, start_ind, mid_ind)
  elsif mid_ele < target
    return index(target, (mid_ind + 1), end_ind)
  end
    # raise NotImplementedError.new("You need to implement the index method!")
  end
end
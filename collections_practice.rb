def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort.reverse
end

def sort_array_char_count(array)
  array.collect {|word| "#{word.length}#{word}"}.sort.collect{|word| word[1, word.length]}
end

def swap_elements(array)
  original_index = array[1]
  array[1] = array[2]
  array[2] = original_index
  array
end

# def swap_elements_from_to(array, index, destination_index)
#   original_index = array[index]
#   array[index] = array[destination_index]
#   array[destination_index] = original_index
#   array
# end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  kesha_array = []
  array.each do |name|
    emp_str = ""
    emp_str << name[0,2] + "$" + name[3, name.length]
    kesha_array << emp_str
  end
  kesha_array
end

def find_a(array)
  array.select {|word| word.start_with?("a")}
end

def sum_array(array)
  array.inject(:+)
end

def add_s(array)
  array.each_with_index.collect do |word, index|
    index != 1 ? word + "s" : word = array[1]
  end
end

class Sort
  def sort_numbers(num_array)
    sorted_array = []
    (0...num_array.length).each do
      sorted_array <<  num_array.min
      num_array.delete(num_array.min)
    end
    sorted_array
  end
end

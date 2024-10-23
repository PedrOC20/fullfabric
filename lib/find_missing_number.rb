def find_missing_number(arr, nth: 1)
  sorted = arr.sort
  missing_numbers = []

  current_number = 1

  while missing_numbers.size < nth
    missing_numbers << current_number unless sorted.include?(current_number)
    current_number += 1
  end

  missing_numbers[nth - 1]
end

puts find_missing_number([[4, 3, 6, 2, 1, 7]])
puts find_missing_number([4, 3, 6, 2, 1, 7, 9], nth: 2)
puts find_missing_number([4, 3, 6, 2, 1, 7, 9], nth: 3)
# Initialize an empty array to store the sorted integers
result = []

# Loop through each command line argument
ARGV.each do |arg|
  # Skip the argument if it is not an integer
  next if arg !~ /^-?[0-9]+$/

  # Convert the argument to an integer
  i_arg = arg.to_i

  # Insert the integer at the correct position in the sorted array
  is_inserted = false
  i = 0
  l = result.size
  while !is_inserted && i < l do
    if result[i] < i_arg
      i += 1
    else
      result.insert(i, i_arg)
      is_inserted = true
      break
    end
  end
  # Append the integer to the end of the array if it cannot be inserted
  result << i_arg if !is_inserted
end

# Print out the sorted array
puts result

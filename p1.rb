csv_data = [] # Empty array to store the CSV data

File.open('data.csv', 'r') do |file| # Open the CSV file for reading
  header = file.readline.chomp.split(',') # Read the header row and remove the trailing newline character
  
  file.each_line do |line| # Read the remaining rows
    values = line.chomp.split(',') # Again Remove the trailing newline character    
    row = {} # Empty hash to store the row data
    
    header.each_with_index do |key, index| # Iterate over each value and assign it to the corresponding key in the hash
      row[key] = values[index]
    end
    csv_data << row # With this we add the hash representing the row to the array
  end
end

puts csv_data.inspect # Print the array of hashes as a Ruby object

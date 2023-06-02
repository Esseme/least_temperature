class LeastTemperature
  def initialize(file_path)
    @file_path = file_path
  end

  def read_file
    first_row = File.open(@file_path, "r") do |file|
      file.each_line.first
    end

    first_row[2..3]
  end

  def lowest_value
    lowest = nil
    day = nil

    File.open(@file_path) do |file|
      file.each_with_index do |line, index|
        next if index.zero? || index == 1

        columns = line.strip.split(/\s+/)
        third_col_value = columns[2].to_i

        if lowest.nil? || third_col_value < lowest
          lowest = third_col_value
          day = columns[0]
        end
      end
    end

    day
  end
end

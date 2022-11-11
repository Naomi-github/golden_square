def calculate_reading_time(str)
  words = str.split(' ')
  (words.count / 200.to_f).ceil
end

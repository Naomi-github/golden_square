def count_words(str)
  str_count = str.split(' ')
  if str.empty?
    0
  elsif str_count.length >= 1
    str_count.length
  end
end

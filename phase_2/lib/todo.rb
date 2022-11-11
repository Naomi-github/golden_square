def todo(str)
  check_str = str.upcase.split(' ')
  check_str.include? 'TODO'
end

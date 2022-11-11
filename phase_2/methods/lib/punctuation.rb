def punctuation(str)
  first_letter_upcase = str[0] == str[0].upcase
  last_character_valid = ['.', '!', '?'].include? str[-1]
  if first_letter_upcase && last_character_valid
    true
  else
    false
  end
end

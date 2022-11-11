def get_most_common_letter(text)
  counter = Hash.new(0)
  text.gsub(' ', '').chars.each do |char|
    counter[char] += 1
  end
  p counter.to_a.sort_by { |_k, v| v }.last[0]
end

get_most_common_letter('the roof, the roof, the roof is on fire!')

# Intended output:
#
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"

# gsub to get rid of the spaces
# [0][0] returned the first character tand they were sorted smallest to largest. changed to the last string in the array and returned the first item so returned o

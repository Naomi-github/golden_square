class GrammarStats
  def initialize
    # ...
    @passed_texts = 0
    @failed_texts  = 0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
      first_letter_upcase = text[0] == text[0].upcase
      last_character_valid = ['.', '!', '?'].include? text[-1]
      first_letter_upcase
      last_character_valid
      if first_letter_upcase && last_character_valid
        @passed_texts += 1
        true
      else
        @failed_texts += 1
        false
      end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    total_count = @passed_texts + @failed_texts
    ((@passed_texts.to_f / total_count.to_f) * 100).to_i

  end
end


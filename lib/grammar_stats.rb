class GrammarStats
  def initialize
    @punc_array = ["!", "?", ",", ".", ";", ":"]
    @passed = 0
    @attempts = 0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    text_arr = text.split("")
    first_char = text_arr[0]
    last_char = text_arr[-1]

    if first_char == first_char.upcase && @punc_array.include?(last_char)
      @passed += 1
      @attempts += 1
      true
    else
      @attempts += 1
      false
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    percentage = @passed.to_f / @attempts.to_f * 100
    return percentage.to_i
  end
end
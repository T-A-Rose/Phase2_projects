def make_snippet(text)
  string_array = []

  if text.is_a? Integer
    fail "Needs to be a string"
  else
    string_array = text.split(" ")
    if string_array.length > 5
      new_string = string_array.join(" ")
      new_string + "..."
    else
      new_string = string_array.join(" ")
    end
  end
end

def count_words(word)
  word_length = word.split(" ")
  return word_length.length
end
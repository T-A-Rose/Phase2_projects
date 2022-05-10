def get_most_common_letter(text)
 text = text.tr(" ", "")
 text = text.tr(",", "")
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
  temp_array = counter.sort_by { |k, v| v } 
  temp_array.reverse!
  # temp_array.delete_if {|k,v| k == " " || k == ","}
  p temp_array[0]
end

puts get_most_common_letter("the roof, the roof, the roof is on fire!")

# p array = counter.sort_by { |k, v| v }
#    p array.reverse!
#    array.delete_if {|k, v| k == " " || k == ","}
#    p array[0][0]
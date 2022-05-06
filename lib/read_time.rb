# As a user
# So that I can manage my time
# I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

def read_time(total_text)
  if total_text < 0
      fail "negative number"
  else
  wps = 200 / 60
  time_taken = total_text / wps
  time_taken / 60
  end
end

puts read_time(1000)


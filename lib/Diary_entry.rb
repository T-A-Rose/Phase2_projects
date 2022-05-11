class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @start = 0
    @end = 0
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    @temp_array = @contents.split(" ")
    @temp_array.length
  end

  def reading_time(wpm)
    count_words / wpm
  end

  def reading_chunk(wpm, minutes) 
    total_words = wpm * minutes
    @end += total_words
    arr = @contents.split(' ')
    fin_arr = arr[@start...@end].join(' ')
    if @end >= count_words
      @start = 0
      @end = 0
    else
      @start = @end
    end 
    return fin_arr

    # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end
require "Diary_entry"

RSpec.describe DiaryEntry do
  t = 'ITV News'
  c = "The prime minister's plan for the year has been set out in the Queen's Speech"
  it "will return the title as a string" do
    diary_entry = DiaryEntry.new(t, c)
    expect(diary_entry.title).to eq "ITV News"
  end

  it "will return the contents" do
    diary_entry = DiaryEntry.new(t, c)
    expect(diary_entry.contents).to eq "The prime minister's plan for the year has been set out in the Queen's Speech"
  end

  it "will count the number of words in the contents" do
    diary_entry = DiaryEntry.new(t, c)
    expect(diary_entry.count_words).to eq 15
  end

  it "will calculate the number of words the user can read per minute" do
    diary_entry = DiaryEntry.new(t, c)
    result = diary_entry.reading_time(5)
    expect(result).to eq 3
  end

  it "will count a chunk of the words the user is able to read in a set time" do
    diary_entry = DiaryEntry.new(t, c)
    result = diary_entry.reading_chunk(5, 1)
    expect(result).to eq "The prime minister's plan for"
  end

  it "will count a chunk of the words the user is able to read in a set time from where it left off" do
    diary_entry = DiaryEntry.new(t, c)
    diary_entry.reading_chunk(5, 1)
    expect(diary_entry.reading_chunk(5, 1)).to eq "the year has been set"
  end

  it "will count a chunk of the words the user is able to read in a set time from where it left off until the end" do
    diary_entry = DiaryEntry.new(t, c)
    diary_entry.reading_chunk(5, 1)
    diary_entry.reading_chunk(5, 1)
    expect(diary_entry.reading_chunk(6, 1)).to eq "out in the Queen's Speech"
  end

  it "will count a chunk of the words the user is able to read in a set time from where it left off until the end" do
    diary_entry = DiaryEntry.new(t, c)
    diary_entry.reading_chunk(5, 1)
    diary_entry.reading_chunk(5, 1)
    diary_entry.reading_chunk(5, 1)
    expect(diary_entry.reading_chunk(5, 1)).to eq "The prime minister's plan for"
  end
end
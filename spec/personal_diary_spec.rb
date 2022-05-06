require "personal_diary"

RSpec.describe "make_snippet" do
  it "returns 5 words" do
    dia_str = make_snippet("Hello darkness my old friend")
    expect(dia_str).to eq "Hello darkness my old friend"
  end

  it "returns more than 5 words" do
    dia_str = make_snippet("Hello darkness my old friend, I've come to talk to you again")
    expect(dia_str).to eq "Hello darkness my old friend, I've come to talk to you again..."
  end

  it "returns less than 5 words" do
    dia_str = make_snippet("Hello")
    expect(dia_str).to eq "Hello"
  end
end

RSpec.describe "count_words" do
  it "counts the number of words in a string" do
    word_str = count_words("Hello world, how are you doing today?")
    expect(word_str).to eq 7
  end
end
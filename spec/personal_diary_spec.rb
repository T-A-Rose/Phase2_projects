require "personal_diary"

RSpec.describe "make_snippet" do
  context "Testing the diary" do
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

    it "errors" do
      expect { error_str = make_snippet(123456) }.to raise_error(RuntimeError, "Needs to be a string")
    end
  end
end

RSpec.describe "count_words" do
  it "counts the number of words in a string" do
    word_str = count_words("Hello world, how are you doing today?")
    expect(word_str).to eq 7
  end
end
require "grammar_stats"

RSpec.describe GrammarStats do
  context "Doing the checks on the 'check' method" do
    it "will check whether returned text starts with a capital letter & includes punctuation" do
      grammar = GrammarStats.new()
      expect(grammar.check("Testing!")).to eq true
    end

    it "will check whether text doesn't start with a capital letter but does include punctuation" do
      grammar = GrammarStats.new()
      expect(grammar.check("testing!")).to eq false
    end

    it "will check the whole sentence to see if the first word has a capital and the last word has punctuation" do
      grammar = GrammarStats.new()
      expect(grammar.check("Hello darkness my old friend!")).to eq true
    end

    it "will check the whole sentence to see if it recognises no punctuation" do
      grammar = GrammarStats.new()
      expect(grammar.check("Hello darkness my old friend")).to eq false
    end

    it "will check that the test works with different forms of punctuation" do
      grammar = GrammarStats.new()
      expect(grammar.check("Hello darkness my old friend.")).to eq true
    end
  end

  context "Doing the checks on the 'percentage_good' method" do
    it "will return an integer percentage of the text checked that has passed" do
      grammar = GrammarStats.new()
      grammar.check("Hello darkness my old friend!")
      grammar.check("hello darkness my old friend!")
      grammar.check("Hello darkness my old friend")
      expect(grammar.percentage_good).to eq 33
    end
  end
end
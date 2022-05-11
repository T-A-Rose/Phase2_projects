require "testdrive_class"

RSpec.describe Gratitude do
  it "It will add 'your cat' to the class" do
    gratitude = Gratitude.new
    gratitude.add("your cat")
    expect(gratitude.format).to eq "Be grateful for: your cat"
  end

  it "It will add 'nice people' to the class" do
    gratitude = Gratitude.new
    gratitude.add("nice people")
    expect(gratitude.format).to eq "Be grateful for: nice people"
  end

  it "It will add 'your cat' & 'nice people" do
    gratitude = Gratitude.new
    gratitude.add("your cat")
    gratitude.add("nice people")
    expect(gratitude.format).to eq "Be grateful for: your cat, nice people"
  end
end

require "todo_list"

RSpec.describe "todo_list" do
  context "checks that the string contains #TODO" do
    it "will ensure that the item being displayed contains todo" do
      expect(todo("#TODO homework")).to eq true
    end

    it "will confirm the string does not contain #TODO" do
      expect(todo("Homework")).to eq false
    end
  end
end
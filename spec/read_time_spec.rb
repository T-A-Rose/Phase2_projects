require "read_time"

RSpec.describe "read_time" do
    it "it tests word amount" do
    expect(read_time(5000)).to eq 27
    end

    it "it tests a float number" do
    expect(read_time(4.5)).to eq 0.025
    end


    context "testing if fails" do
      it "fails" do
        expect{read_time(-500)}.to raise_error(RuntimeError, "negative number")
      end
    end

end


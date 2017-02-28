require 'rspec'
class String
    def reverse
        split.reverse.join(" ")
    end
end

describe "reverse" do
    it "reverses the string" do
        test = "lazy am I"
        expect(test.reverse).to eq("I am lazy")
    end
end
require 'rspec'
require 'pry'

class Array
  def mapper(*arr)
    x = self.zip(*arr)
    x.each do | item |
      puts "#{item}"
    end
  end
end

headers = ['ny', 'co','tx', 'tn', 'sc', 'nc', 'mi', 'mn']

players = ['san', 'dan', 'man', 'ban', 'ran', 'pan', 'can', 'lan']

ratings = [0, 1, 2, 2, 5, 3, 7, 4]
headers.mapper(players, ratings)

describe "Array Mapper" do
  it "takes an array and maps it with elements of other arrays from parameters" do
    a = [3, 5, 7]
    b = ["a", "b"]
    c = [23, 55,34]
    expect(a.mapper(b, c)).to eq(
      [[3, "a", 23],
      [5, "b", 55],
      [7, nil, 34]])
    end
  end
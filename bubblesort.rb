require 'rspec'

class Array
  def bubble_sort
    n = self.length
    
    loop do
      swapped = false
      (n-1).times do |i|
        if self[i] > self[i+1]
          self[i], self[i+1] = self[i+1], self[i]
          swapped = true
        end
      end
      break if not swapped
    end
    self
  end
end
  
describe "bubble sort" do
  it "sorts through an array" do
    array = [34, 5, 33, 66, 7]
    expect(array.bubble_sort).to eq([5, 7, 33, 34, 66])
  end
end
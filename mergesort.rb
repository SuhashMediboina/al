require 'rspec'

class Array
  def merge_sort
    if self.length <= 1
      self
    else
      mid = (self.length / 2).floor
      left = self[0..mid - 1].merge_sort
      right = self[mid..self.size - 1].merge_sort
      merge_list(left, right)
    end
  end
  
  def merge_list(left, right)
    if left.empty?
      return right
    elsif right.empty?
      return left
    elsif left.first < right.first
      [left.first] + merge_list(left[1..left.size-1], right)
    else
      [right.first] + merge_list(left, right[1..right.size-1])
    end
  end
end

describe "mergesort" do
  it "sorts through an array by dividing into smaller bits recursively before merging them together" do
    array = [34, 5, 33, 66, 7]
    expect(array.merge_sort).to eq(array.sort)
  end
end

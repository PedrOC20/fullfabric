require_relative '../lib/find_missing_number'

RSpec.describe 'find_missing_number' do
  it 'returns the 1st missing number' do
    arr = [4, 3, 6, 2, 1, 7]
    expect(find_missing_number(arr)).to eq(5)
  end

  it 'returns the 2nd missing number' do
    arr = [4, 3, 6, 2, 1, 7, 9]
    expect(find_missing_number(arr, nth: 2)).to eq(8)
  end

  it 'returns the 3rd missing number' do
    arr = [4, 3, 6, 2, 1, 7, 9]
    expect(find_missing_number(arr, nth: 3)).to eq(10)
  end

  it 'returns the correct missing number when the array is empty' do
    arr = []
    expect(find_missing_number(arr)).to eq(1)
    expect(find_missing_number(arr, nth: 2)).to eq(2)
    expect(find_missing_number(arr, nth: 3)).to eq(3)
  end

  it 'returns missing numbers outside the array range' do
    arr = [2, 4, 6, 8]
    expect(find_missing_number(arr)).to eq(1)
    expect(find_missing_number(arr, nth: 2)).to eq(3)
    expect(find_missing_number(arr, nth: 3)).to eq(5)
    expect(find_missing_number(arr, nth: 4)).to eq(7)
    expect(find_missing_number(arr, nth: 5)).to eq(9)
  end
end

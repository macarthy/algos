require_relative "../luhn"

describe Luhn do
  it "is true" do
    expect(true).to eq(true)
  end

  it "add the checksum to the digits correctly" do
    expect(Luhn.add_checksum("7992739871")).to eq("79927398713")
  end 

  it "calculates the luhn number correctly" do
    expect(Luhn.calculate("7992739871")).to eq(3)
  end 

  it "sum the digits of the products if over 9" do
    expect(Luhn.double_and_digit("9")).to eq(9)
    expect(Luhn.double_and_digit("8")).to eq(7)
    expect(Luhn.double_and_digit("7")).to eq(5)
    expect(Luhn.double_and_digit("6")).to eq(3)
    expect(Luhn.double_and_digit("5")).to eq(1)
    expect(Luhn.double_and_digit("4")).to eq(8)
    expect(Luhn.double_and_digit("3")).to eq(6)
    expect(Luhn.double_and_digit("2")).to eq(4)
    expect(Luhn.double_and_digit("1")).to eq(2)
    expect(Luhn.double_and_digit("0")).to eq(0)
  end 

  it "separate the string in to 2 arrays of numbers" do
    expect(Luhn.every_second_digit("7992739871")).to eq([1,8,3,2,9])
    expect(Luhn.every_other_digit("7992739871")).to eq([7,9,7,9,7])
  end 

  it "sums the contents of an ary" do
      expect(Luhn.sum_array([1,2,3])).to eq(6)
  end 

  it "runs the double and get digit on each element of an ary" do
      expect(Luhn.double_every_second_digit([1,8,3,2,9])).to eq([2,7,6,4,9])
  end 

end 

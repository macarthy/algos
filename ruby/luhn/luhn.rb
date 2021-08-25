class Luhn

  def self.add_checksum(s)
    s + self.calculate(s).to_s
  end 
  
  def self.calculate(s)
    
    numbers = self.reverse_string_to_array(s)
    numbers = numbers.each_with_index.map do  |num, index|
      num *= 2 if index.even?
      num > 9 ? num - 9 : num
    end
    
    sum = sum_array(numbers)
    result = 10 - sum % 10
    result==10 ? 0 : result
    
    return result
  end 

  def self.reverse_string_to_array(s)
    s.to_s.reverse.split("").map { |num| num.to_i }
  end 

  def self.sum_array(ary)
    ary.inject(0) { |m, x| m + x }
  end 

  def self.double_every_second_digit(ary)
    ary.collect! { |num| double_and_digit(num) }
  end 
  

  def self.every_second_digit(s)
      reversed = self.reverse_string(s)
      reversed.map.with_index{ |x, i| x if i.even? }.compact
  end 

  def self.every_other_digit(s)
      reversed = self.reverse_string(s)
      reversed.map.with_index{ |x, i| x if i.odd? }.compact
  end 

  def self.double_and_digit(n)
    n = n.to_i * 2
    d = n > 9 ? n - 9 : n 
    d
  end 

  def self.reverse_string(s)
    s.to_s.split("").reverse.collect! { |num| num.to_i }
  end 

end 

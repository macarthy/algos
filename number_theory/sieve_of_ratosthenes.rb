def sieve_of_ratosthenes(n)
  p = 2
  s = (2..n)
  i = 2
  sa = s.to_a
  sa.each do |x|
    sa = sa.delete_if { |e| (e % x).zero? && e != p }
    p = sa.reject { |e| e <= p }.min
    return sa if p.nil? || p * x > n
  end
  sa
end

puts sieve_of_ratosthenes(30)

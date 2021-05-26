def dynamic_longest_common_substring(s1, s2)
  return '' if s1 == '' || s2 == ''

  m = Array.new(s1.length) { [0] * s2.length }
  longest_length = 0
  longest_end_pos = 0
  (0..s1.length - 1).each do |x|
    (0..s2.length - 1).each do |y|
      next unless s1[x] == s2[y]

      m[x][y] = 1
      m[x][y] += m[x - 1][y - 1] if x > 0 && y > 0

      if m[x][y] > longest_length
        longest_length = m[x][y]
        longest_end_pos = x
      end
    end
  end
  s1[longest_end_pos - longest_length + 1..longest_end_pos]
end

puts dynamic_longest_common_substring('ajkhdfsjustinkhvnsdjkhdf', 'hjksjustindhakjkjbasjhsdf')

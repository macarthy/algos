def boyer_moore(text, pattern)
  p = pattern.length
  t = text.length

  return 0 if p.zero?

  # build a dict
  d = {}
  pa = pattern.split('')
  pa.each_index { |i| d[pattern[i]] = i }
  i = p - 1
  jump = p - 1

  while i < t
    if text[i] == pattern[jump]
      return i if jump.zero?

      i -= 1
      jump -= 1
    else

      k = d.fetch(text[i], -1)
      i += p - [jump, k + 1].min

      # reset the pattern index to begin comparing from the back
      jump = p - 1

    end
  end

  -1
end

puts boyer_moore('m,sdjafhaaabcjdhfjsdfha', 'abc')

#todo  find nth char of string in series
# 112123123412345 etc
#
n = 31 - 1
i = 0
tot_chars = 0
while tot_chars < n
  i += 1
  tot_chars += i
end
s = "112123123412345123456123456712345678"
x = tot_chars - n
puts s[-x]


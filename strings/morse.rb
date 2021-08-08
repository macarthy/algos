# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

morse_dict = {
	a: ".-",
	b: "-...",
	c:  "-.-.",
	d:  "-..",
	e:  ".",
	f:  "..-.",
	g:  "--.",
	h:  "....",
	i:  "..",
	j:  ".---",
	k:  "-.-",
	l:  ".-..",
    m:  "--",
	n:  "-.",
	o:  "---",
	p:  ".--.",
	q:  "--.-",
	r:  ".-.",
	s:  "...",
	t:  "-",
	u:  "..-",
	v: "...-",
	w:  ".--",
	x:  "-..-",
	y:  "-.--",
	z:  "--.."

}

l = gets.chomp
n = gets.to_i
dict={}
c = 0
min_dict_word_length = 1000000000000


def reduce_code(s,dict,min_dict_word_length,c=0)
    STDERR.puts s
    if s.length < min_dict_word_length
        return c
    end
    dict.keys.each do |k|
        STDERR.puts dict[k]
        if s == dict[k]
            return c + 1
        end

        s = s.sub(dict[k], "")
        STDERR.puts s
        c += 1

        dict.values.each do |v|
            if s.include?(v)
                #reduce_code(s,dict,c)
            end
        end
        return c
    end
end


n.times do
    word =  gets.chomp
    letters = word.downcase.chars
    encword = letters.map{|l| morse_dict[l.to_sym] }.join("")


    el = encword.length
    if  el <= l.length
        if l.include?(encword)
            dict[word] = encword

            if el <  min_dict_word_length
                min_dict_word_length = el
            end
        end
    end
end



STDERR.puts l
STDERR.puts dict.to_s
STDERR.puts min_dict_word_length
STDERR.puts (l.length.to_f/ min_dict_word_length)


puts reduce_code(l,dict,min_dict_word_length)

# Write an answer using puts
# To debug: STDERR.puts "Debug messages..."


https://www.dropbox.com/s/ldqzt3ve2ghn3s2/Screenshot%202021-06-27%20at%2019.49.34.png?dl=0



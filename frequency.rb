puts "Enter a atring"
a=gets.chomp
b={}
a.each_char do |c|

	if b.key?(c)==false
		b=b.merge({c=>1})
		puts "here"
	else
		b[c]=b[c]+1

	end
end

puts b
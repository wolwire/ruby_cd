puts "Enter a atring"
a=gets.chomp
b={}
a.enum_for(:each_byte).each do |f|
	if b.key?("#{f.chr}")==false
		b=b.merge({"#{f.chr}"=>1})
		puts "here"
	else
		b["#{f.chr}"]=b["#{f.chr}"]+1

	end
end

puts b

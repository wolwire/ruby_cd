puts "Enter a atring"
a=gets.chomp
b={}
i=0
while i < a.length do 

	if b.key?(a[i])==false
		b=b.merge({a[i]=>1})
		puts "here"
	else
		b[a[i]]=b[a[i]]+1

	end
	i += 1
end

puts b
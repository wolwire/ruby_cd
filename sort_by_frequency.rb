
#sort the hash by value frequency

def max_sort(hash)
 return hash.sort_by{|k,v| v}
end

def min_sort(hash)
 return hash.sort_by{|k,v| -1*v}
end

#input commands for string 
puts "Enter a string"
a=gets.chomp
b={}

#string frequency 
a.each_char do |c|
	if b.key?(c)==false
		b[c]=1
	else
		b[c]=b[c]+1
	end
end


k=max_sort(b)
l=min_sort(b)


k.each{|arr| p "#{arr[0]}:#{arr[1]}"}
puts "-----"
l.each{|arr| p "#{arr[0]}:#{arr[1]}"}










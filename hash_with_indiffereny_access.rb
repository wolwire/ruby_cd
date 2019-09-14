class Hash_with_indifferent_access<Hash

	#attr_accessor :ha

	def initialize(*arg)
		arg.each{|k| k.each{|k,v| self.merge!({k.to_s=>v})}}#@ha.merge!()
		#@ha.merge!(Hash[*arg])
	end

	def []= (*arg)
		arg=arg.map{|k| k.to_s}
		self.merge!(Hash[*arg])
	end

	def delete(*arg)
		super(*arg)
	end

	def [](arg)
		super(arg.to_s)
	end

	def has_key? (key)
		super(key.to_s)
	end 

	def values_at(key)
		super(key.to_s)
	end



end


a=Hash_with_indifferent_access.new({:a=>"b","c"=>"d"})

a["g"]="b"

a.delete("a")
p a["g"]
p a.has_key?(:g)
p a.has_value?("d")
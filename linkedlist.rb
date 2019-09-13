class Node
	attr_accessor :value ,:next
	def initialize(value)
		@value=value
		@next=nil
		return Node
	end
end

class LinkedList
	attr_accessor :head
	def initialize
		@head=nil
	end

	def add(val)
		if @head == nil
			@head = Node.new(val)
		else
			curr=@head
			while curr.next != nil
				curr=curr.next
			end
			curr.next = Node.new(val)
		end
	end

	def delete(val)
		if @head.value == val
			@head=@head.next
		else
			curr=@head
			while curr.next != nil 
				if(curr.next.value==val)
					curr.next=curr.next.next 
					break
				else
					curr=curr.next
				end
			end

		end 
	end

	def disp()
		puts @head
		curr=@head
		while curr != nil
			puts curr.value
			curr=curr.next
		end
	end

end

a=LinkedList.new
a.add(1)
a.add(2)
a.add(3)
a.add(4)

a.delete(1)
a.delete(2)
a.delete(4)
a.delete(3)

a.disp








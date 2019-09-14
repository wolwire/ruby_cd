def ask(question, kind="string")
  print question + " "
  answer = gets.chomp
  answer = answer.to_i if kind == "number"
  return answer
end

class Person
	@@accountNO=0

	def initialize (name)
		@name=name
		@@accountNO=@@accountNO+1
		@balance=0
		@transaction=[]
		@accountNo=@@accountNO
	end
	

	def add_transaction()
		loop do 
			if (ask("Do you want to enter any transaction?(y/n)")=="n")
				break
			else
				type=ask("Enter Transaction Type? \n1.Deposit \n2.Credit ")
					if  type == "1"
						amount=ask("Enter amount:")
						@balance = @balance+amount.to_i
						@transaction.push( {"type" => "Deposit", "Amount" => amount , "Balance" => @balance} )

					elsif type == "2"
						amount=ask("Enter amount:")
						@balance = @balance-amount.to_i
						@transaction.push({"type" => "Credit", "Amount" => amount , "Balance"=> @balance })
					else 
						puts "Wrong transaction type"
					end
			end
		end
	end



	def  display_personal_records
		puts "-------Start of record---------"
		puts "Name:#{@name}"
		puts "Acc. Number:#{@accountNo}"
		puts "Final Balance:#{@balance}"
		puts "-----------------"
		@transaction.each {|tr| puts "Transaction Type : #{tr["type"]}  Amount : #{tr["Amount"]}  Balance :#{tr["Balance"]}"}
		puts "-------end of record of #{@name}---------"
	end

end 

class Bank_records

	def initialize(name)
		@bank_Name=name
		@accounts=[]
	end

	def make_new_account
		a=Person.new(ask("Enter the name of the Person"))
		a.add_transaction
		return a
	end
		

	def add_accounts
		loop do 
			if ask("Want to make a new account??(y/n)")=="n"
				break
			else
				@accounts.push(make_new_account)
			end
			
		end
	end
	def disp_bank
		@accounts.each do |acc|
			puts acc.display_personal_records
		end
	end
end

a=Bank_records.new ("PNB")
a.add_accounts
a.disp_bank





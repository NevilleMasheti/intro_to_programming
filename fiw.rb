def number_in_words (number)
    n=number.to_i
 	is_negative=false
 	add_comma=false
 	words=""

if(n<0)
	is_negative=true
	n=n.abs()
end

if(n==0)
	words<<"zero"

end

if(n>1000000000)
	k=n/1000000000
	n=n%1000000000
	words<<smallnums(k)+" billion, "
end
if(n>1000000)
	k=n/1000000
	n=n%1000000
	words<<smallnums(k)+" million, " 
end
if(n>1000)
	k=n/1000
	n=n%1000
	words<<smallnums(k)+" thousand, " 
end

  words<<smallnums(n) if n>0

if(is_negative)
	words="Negative"+words
end
 print words
end

def smallnums(n)
	ten_s=["", " ", "twenty", "thirty","fourty", "fifty", "sixty","seventy","eighty","ninety"]
    unit_s=["", "one","two","three","four","five","six","seven","eight","nine"]
    teen_s=["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen","nineteen"]
	word=""
	add_and=false
	factorz=0
    if(n>100)
	 	factorz=n/100
	 	n=n%100
	 	word<<unit_s[factorz]<<" hundred"
	 	add_and=true if n>0
	end
	if(n>=20)
		factorz=n/10
		n=n%10
		if(add_and)
			word<<" and "<<ten_s[factorz]
		else
			word<<" "<<ten_s[factorz]
		end
	add_and=false
	end
	if(n>=10 && n<20)
		factorz=n%10
		tensteen=true
		word<<" and "<<teen_s[factorz]
		n=0
	end
	if(n>0 && n<10)
		factorz=n
		if(add_and)
			word<<" and "<<unit_s[factorz]
		else
			word<<" "<<unit_s[factorz]
		end
	end
	return word
end


puts "Enter a number?"
x=gets.chomp().to_i

number_in_words()







def caesar_cipher(text, shift= 0)
	letters = text.split("")
	encrypted = letters.map do |letter| 
		
		shift = shift%26 #magic

		if letter =~ /\s/
			letter = " "
		elsif  letter.downcase == letter then 
			(letter.ord + shift).between?(97,122)? letter = ((letter.ord + shift)).chr : letter = ((letter.ord+shift)-26).chr 
		elsif letter.upcase == letter then
			(letter.ord + shift).between?(65,90)? letter = ((letter.ord + shift)).chr : letter = ((letter.ord+shift)-26).chr 
		end 
	end

	p encrypted
end

caesar_cipher("Hello there",-1)	

	


=begin try 1
def caesar_cipher(text,shift = 0)
	if shift > 51
		return "Shift cannot be bigger than 51"
	end
	encrypted = text.split("").map do |letter| 	

		key = letter.ord + shift
 		if key.between?(65,90) or key.between?(97,122)
 			letter =  key
 		elsif letter =~ /\s/
 			letter = " "
 		else
 			letter =  key - 26
 		end
			
		#letter = letter.chr
	end
	encrypted.join("")
end

p caesar_cipher("Z", 7 )

#ABCDEFGHIKLMNOPQRSTUVWXYZ

=end
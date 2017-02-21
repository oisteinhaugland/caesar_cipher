








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
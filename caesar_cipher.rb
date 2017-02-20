#not working with spaces and uppercase
#jobber med spaces. legger meg

def caesar_cipher(text,shift = 0)
	encrypted = text.split("").map do |letter| 		
 		
 		if 68 <= letter.ord + shift and 90 >= letter.ord + shift 
 			letter =  letter.ord + shift
 		elsif 97 <= letter.ord + shift and 122 >= letter.ord + shift 
 			letter =  letter.ord + shift
 		else
 			letter =  letter.ord + shift - 26
 		end
		#letter = letter.chr
	end
	encrypted.join("")#.gsub()
end

p caesar_cipher(" ",0)


def caesar_cipher(string, shift = 1)
  alpha = Array('a'..'z') #creates an array of all alphabets
  encrypter  = Hash[alpha.zip(alpha.rotate(shift))] #converts arguments to arrays, then rotates both elements 
  p encrypter
  string.chars.map { |c| encrypter.fetch(c, " ") }
  
end  

p caesar_cipher("testing", 3).join



=begin
  take in a string and split it
  convert everry character to their ASCII code
  keep the numbers between their A-Z and a-z equivalent
  convert the codes back to string and join them.
  output final result.
=end

def caesar_cipher(string, shifts)
  split_string = string.split('')
  ciphered = ''
  split_string.each do |str|
    if str =~ /[a-z]/i
      ascii = str.ord
      base = ascii < 91 ? 65 : 97 
      switching = (((ascii - base) + shifts) % 26) + base
      ciphered += switching.chr
    else
      ciphered += str
    end
  end
  p ciphered
end

caesar_cipher("A", 1) # B
caesar_cipher("Aaa", 1) # Bbb
caesar_cipher("Hello, World!", 5) # Mjqqt, Btwqi!
caesar_cipher("Mjqqt, Btwqi!", -5) # Hello, World!
caesar_cipher('Z', 1) # A
caesar_cipher('Hello, World!', 75) # Ebiil, Tloia!
caesar_cipher('Hello, World!', -29) # Ebiil, Tloia!

def caesar_cipher (string, shift)
  cipher_arr = string.split("").map { |character| apply_cipher(character, shift_factor) }
  cipher_arr.join
end

def apply_cipher (c, sf)
  alph_low = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  alph_up = alph_low.map { |c| c.upcase }
  if alph_low.include? c
    idx = (alph_low.find_index(c) + sf) % alph_low.length
    cipher_c = alph_low[idx]
  elsif alph_up.include? c
    idx = (alph_up.find_index(c) + sf) % alph_up.length
    cipher_c = alph_up[idx]
  else
    cipher_c = c
  end
  cipher_c
end

puts caesar_cipher("What a string!", 5)

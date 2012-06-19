require 'morse_codec'

m = MorseCodec.new

morse_encrypted = m.to_morse("Hello world").inspect
puts morse_encrypted

morse_decrypted = m.decode_morse(m.to_morse("Hello world")).inspect
puts morse_decrypted
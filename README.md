### ### ### Morsifier ### ### ### 
A simple Morse coder and decoder engine.

### Installation ### 

$ gem install Morsifier

### Usage ### 

m = MorseCodec.new

morse_encrypted = m.to_morse("Hello World").inspect
puts morse_encrypted

morse_decrypted = m.decode_morse(m.to_morse("Hello World")).inspect
puts morse_decrypted

### Output ### 
".... . .-.. .-.. ---   .-- --- .-. .-.. -.."
"Hello World"

### Author ###

Aghyad Saleh (@aghyadsaleh)
aghyad1984@hotmail.com
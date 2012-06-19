require 'morse_codec/morse_helper'

class MorseCodec

  def initialize
    @morse_code = MorseCodec::MorseHelper.load_dictionary
  end
  
  def to_morse(reg_str="")
    morse_result_arr = []
    str_arr = reg_str.gsub(' ','%').split('%')

    morse_word = ""
    str_arr.each do |this_word|
      splitted = this_word.to_s.split('')
      splitted.each do |this_letter|
        morse_word << (@morse_code[this_letter.upcase].to_s || this_letter) << " "
      end
      morse_result_arr << morse_word << "  "
      morse_word = ""
    end
    return morse_result_arr.to_s.strip
  end

  def decode_morse(morse_str="")
    result_arr = []
    morse_arr = morse_str.split('  ')

    morse_word = ""
    morse_arr.each do |this_word|
      splitted = this_word.to_s.split(' ')
      splitted.each do |this_letter|
        #p = @morse_code.select{|key, hash| hash == this_letter} || [["",""]]
        #morse_word << p.flatten[0]
        morse_word << @morse_code.invert[this_letter] || ""
      end
      result_arr << morse_word.to_s.capitalize << " "
      morse_word = ""
    end
    return result_arr.to_s.strip
  end
  
end
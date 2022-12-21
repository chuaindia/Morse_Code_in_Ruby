CODES = {
  'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..',
  'E' => '.', 'F' => '..-.', 'G' => '--.', 'H' => '....',
  'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
  'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',
  'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
  'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
  'Y' => '-.--', 'Z' => '--..', '0' => '-----', '1' => '.----',
  '2' => '..---', '3' => '...--', '4' => '....-', '5' => '.....',
  '6' => '-....', '7' => '--...', '8' => '---..', '9' => '----.'
}.freeze

def decode_char(morse_char)
    @char = CODES[morse_char]
    @char
  end
  
  def decode_word(morse_word)
    @word = ''
    @array_of_words = morse_word.split
  
    @array_of_words.map do |i|
      @word += decode_char(i)
    end
  
    "#{@word} "
  end
  
  def decode(morse_code)
    @coded_word = ''
    @morse_code_arr = morse_code.split('   ')
    @morse_code_arr.map do |morse_word|
      @coded_word += decode_word(morse_word)
    end
  
    puts "#{@coded_word} "
  end
  
  decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
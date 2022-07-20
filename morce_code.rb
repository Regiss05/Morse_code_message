MORSE_DICTIONARY = {
    '.-' => 'a',
    '-...' => 'b',
    '-.-.' => 'c',
    '-..' => 'd',
    '.' => 'e',
    '..-.' => 'f',
    '--.' => 'g',
    '....' => 'h',
    '..' => 'i',
    '.---' => 'j',
    '-.-' => 'k',
    '.-..' => 'l',
    '--' => 'm',
    '-.' => 'n',
    '---' => 'o',
    '.--.' => 'p',
    '--.-' => 'q',
    '.-.' => 'r',
    '...' => 's',
    '-' => 't',
    '..-' => 'u',
    '...-' => 'v',
    '.--' => 'w',
    '-..-' => 'x',
    '-.--' => 'y',
    '--..' => 'z',
    ' ' => ' ',
    '.----' => '1',
    '..---' => '2',
    '...--' => '3',
    '....-' => '4',
    '.....' => '5',
    '-....' => '6',
    '--...' => '7',
    '---..' => '8',
    '----.' => '9',
    '-----' => '0'
  }.freeze
  
  def convert_char(char)
    return  MORSE_DICTIONARY[char].capitalize
    
    end
    def convert_word(word)
      if word.is_a? String
        word_converted = ''
        word.split.each do |morse|
          dc = convert_char(morse)
          word_converted += dc.to_s
        end
      end
      word_converted
    end
    def convert_sentence(sentence)
      if sentence.is_a? String
          sentence_converted=''
          sentence.split('   ').each do |text|
             dc= convert_word(text)
             sentence_converted +="#{dc} "
          end
      end
      sentence_converted.strip
  end
    p convert_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
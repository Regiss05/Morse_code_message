def decode_morse(morse_code)
    morse_code
      .split('   ')
      .select do |char|
        char != ''
      end
      .map do |word|
        word.split(' ').map { |char| MORSE_CODE[char] }.join
      end
      .join(' ')
  end
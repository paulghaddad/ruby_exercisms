class Fixnum
  ROMAN_MAPPINGS = {
    1000 => 'M',
    500 => 'D',
    100 => 'C',
    50 => 'L',
    10 => 'X',
    5 => 'V',
    1 => 'I'
  }

  EXCEPTIONS = {
    /IIII/ => 'IV',
    /VIV/ => 'IX',
    /XXXX/ => 'XL',
    /LXL/ => 'XC',
    /CCCC/ => 'CD',
    /DCD/ => 'CM'
  }

  def to_roman
    roman_numeral = ''
    input_number = self
    until input_number == 0 # until 0
      ROMAN_MAPPINGS.each do |numeral, roman_letter| # Switch mappings around and use #each
        if input_number % numeral == 0 # %(numeral)
          input_number -= numeral
          roman_numeral.prepend(roman_letter)
          break
        end # extract logic bewteen 26-29 into its own method
      end
    end

    check_for_exceptions(roman_numeral)
  end

  private

  def check_for_exceptions(roman_numeral) # use each_with_object and pass in the roman numeral because you don't need to return roman_numeral
    EXCEPTIONS.each do |exception, substitution|
      roman_numeral.gsub!(exception, substitution)
    end
    roman_numeral
  end
end

# Replace all instances of input_number with self

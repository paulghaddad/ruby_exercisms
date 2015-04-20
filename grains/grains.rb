class Grains
  def square(square_number)
    2 ** (square_number - 1)
  end

  def total(number_of_squares=64)
    return 1 if number_of_squares == 1
    square(number_of_squares) + total(number_of_squares - 1)
  end
end

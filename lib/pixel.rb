class Pixel

  attr_reader :colour
  InvalidPixelError = Class.new(StandardError)

  def initialize
      @colour = 'O'
  end

  def colour=(colour)
    invalid_pixel_str = 'Pixel value must be a single Capital letter [A-Z]'
    raise InvalidPixelError, invalid_pixel_str unless colour =~ /^[A-Z]$/
    @colour = colour
  end

end

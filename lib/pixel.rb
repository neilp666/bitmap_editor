class Pixel

  attr_reader :colour

  def initialize
      @colour = 'O'
      raise StandardError, 'Invalid Pixel'
  end

end

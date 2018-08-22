class Bitmap
   attr_reader :bitmap

  def initialize(width, height)
    @width = width.to_i
    @height = height.to_i
    @pixels = generate_pixels(@width, @height)
  end

  def generate_pixels(width, height)
    if is_bitmap_out_of_bounds?(width) || is_bitmap_out_of_bounds?(height)
      raise StandardError, 'Bitmap grid dimensions out of bounds'
    end
  end

  def show!
    return if @bitmap.nil?
    str = ""
    @bitmap.to_a.each do |row|
      str += row.join("")
      str += "\n"
    end
    puts str
  end

  def clear!
    return if @bitmap.nil?
  end

  def paint!(x, y, c)
    return if @bitmap.nil?
    offset = -1
    @bitmap.set(y.to_i+offset, x.to_i+offset, c)
  end

  def paint_vertically!(x, y1, y2, c)
    return if @bitmap.nil?
    [*y1...y2].each{ |y| self.paint!(x,y,c) }
  end

  private

  def is_bitmap_out_of_bounds?(dimension, max = 250)
    dimension < 1 || dimension > max
  end
end

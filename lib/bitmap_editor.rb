require '../lib/bitmap.rb'

class BitmapEditor

  attr_accessor :bitmap

  def initialize
    @bitmap = nil
  end

  def run(file)
    return puts "please provide correct file" if file.nil? || !File.exists?(file)

    File.open(file).each do |line|
      command, *args = line.chomp.split(" ")
      case command
      when "I"
        @bitmap = Bitmap.new(*args)
      when "L"
        @bitmap.paint!(*args)
      when "H"
        @bitmap.paint_horziontally!(*args)
      when "V"
        @bitmap.paint_vertically!(*args)
      when "C"
        @bitmap.clear!
      when "S"
        @bitmap.show!
      end
    end
  end
end


  private

  def exit_console
    puts 'bye!'
    @running = false
  end

  def show_help
    puts "? - Help
  I M N - Create a new M x N image with all pixels coloured white (O).
  C - Clears the table, setting all pixels to white (O).
  L X Y C - Colours the pixel(X,Y) with colour C.
  V X Y1 Y C - Draw a vertical segment of colour C in column X between rows Y1 and Y2 (inclusive).
  H X1 X2 Y C - Draw a horizontal segment of colour C in row Y between columns X1 and X2 (invclusive).
  S - Show the contents of the current image
  X - Terminate the session"
  end
end

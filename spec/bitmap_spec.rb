require '../lib/bitmap.rb'

describe Bitmap do
  context '.new bitmap' do
    it 'not valid if width is less than 1' do
      expect do
        Bitmap.new('0', '5')
      end.to raise_error(StandardError, 'Bitmap grid dimensions out of bounds')
    end
  end

    it 'not valid width is greater than 250' do
      expect do
        Bitmap.new('251', '5')
      end.to raise_error(StandardError, 'Bitmap grid dimensions out of bounds')
    end

    it 'not valid if height is less than 1' do
      expect do
        Bitmap.new('5', '0')
      end.to raise_error(StandardError, 'Bitmap grid dimensions out of bounds')
    end

    it 'not valid if height is greater than 250' do
      expect do
        Bitmap.new('5', '251')
      end.to raise_error(StandardError, 'Bitmap grid dimensions out of bounds')
    end
end

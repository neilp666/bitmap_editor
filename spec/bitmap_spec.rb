require '../lib/bitmap.rb'

describe Bitmap do
  context 'Generating a new Bitmap' do
    it 'should be invalid and raise error if width is less than 1' do
      expect do
        Bitmap.new('0', '5')
      end.to raise_error(StandardError, 'Bitmap grid dimensions out of bounds')
    end
  end

    it 'should generate error if width is greater than 250' do
      expect do
        Bitmap.new('251', '5')
      end.to raise_error(StandardError, 'Bitmap grid dimensions out of bounds')
    end

    it 'raises error if height is less than 1' do
      expect do
        Bitmap.new('5', '1')
      end.to raise_error(StandardError, 'Bitmap grid dimensions out of bounds')
    end

    it 'raises error if height is greater than 250' do
      expect do
        Bitmap.new('5', '251')
      end.to raise_error(StandardError, 'Bitmap grid dimensions out of bounds')
    end
end

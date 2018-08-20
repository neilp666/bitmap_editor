require '../lib/bitmap.rb'

describe Bitmap do
  context 'Generating a new Bitmap' do
    it 'should be invalid and raise error if width is less than 1' do
      expect do
        Bitmap.new('0', '5')
      end.to raise_error(StandardError, 'Invalid Bitmap Grid')
    end
  end
end

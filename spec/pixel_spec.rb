require '../lib/pixel'

RSpec.describe Pixel do
  let(:pixel) { Pixel.new }

  describe '.initialize pixel' do
    it 'valid if default colour `O`' do
      expect(pixel.colour).to eq('O')
    end
  end

  describe '.test pixel specifications' do
    context 'when using single captial letter from [A-Z] ' do
      it 'will be valid if capital' do
      expect(pixel.colour).to eq('O')
    end
  end

    context  'when using muliple capital letters from [A-Z]' do
      it 'will be invalid & display error message to user ' do
        expect { pixel.colour = 'OO' }.to raise_error(Pixel::InvalidPixelError)
      end
    end

    context 'when using multiple single small letters from [a-z]' do
      it 'will be invalid & display error message to user ' do
        expect { pixel.colour = 'o'}.to raise_error(Pixel::InvalidPixelError)
      end
    end

    context 'when using multiple small letters from [a-z]' do
      it 'will be invalid & display error message to user' do
        expect { pixel.colour = 'OO'}.to raise_error(Pixel::InvalidPixelError)
      end
    end

    context 'when using using multiple letters from [A-Za-z]' do
      it 'will be invalid & display error message to user' do
        expect { pixel.colour = 'Oo'}.to raise_error(Pixel::InvalidPixelError)
      end
    end

    context 'when using multiple letters from [A-Za-z0-9]' do
      it 'will be invalid & display error message to user' do
       expect { pixel.colour = 'Oo0' }.to raise_error(Pixel::InvalidPixelError)
       expect { pixel.colour = 'O0' }.to raise_error(Pixel::InvalidPixelError)
       expect { pixel.colour = 'o0' }.to raise_error(Pixel::InvalidPixelError)
     end
   end

    context 'when using a single digit' do
      it 'will be invalid & display error message to user' do
        expect { pixel.colour = '1'}.to raise_error(Pixel::InvalidPixelError)
      end
    end

    context 'using special characters' do
      it 'should be invalid and raise error' do
        expect { pixel.colour = '<'}.to raise_error(Pixel::InvalidPixelError)
        expect { pixel.colour = '?'}.to raise_error(Pixel::InvalidPixelError)
      end
    end
  end
end

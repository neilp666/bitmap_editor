require '../lib/pixel'

RSpec.describe Pixel do
  let(:pixel) { Pixel.new }

  describe 'initialize pixel colour' do
    it 'should initialize with default colour `O`' do
      expect(pixel.colour).to eq('O')
    end
  end

  describe 'test the Pixel specifications' do
    context 'should be a single captial letter from [A-Z] ' do
      it 'should be capital' do
      expect(pixel.colour).to eq('O')
    end
  end

    context  'use muliple capital letters for [A-Z]' do
      it 'It should be invalid and raise error' do
        expect { pixel.colour = 'OO' }.to raise_error(StandardError)
      end
    end

    context 'use multiple single small letters from [a-z]' do
      it 'should be invalid and raise error' do
        expect { pixel.colour = 'o'}.to raise_error(StandardError)
      end
    end

    context 'use multiple small letters from [a-z]' do
      it 'should be invalid and raise error' do
        expect { pixel.colour = 'OO'}.to raise_error(StandardError)
      end
    end

    context 'using multiple letters from [A-Za-z]' do
      it 'should be invalid and raise error' do
        expect { pixel.colour = 'Oo'}.to raise_error(StandardError)
      end
    end

    context 'using multiple letters from [A-Za-z0-9]' do
      it 'should be invalid and raise error' do
       expect { pixel.colour = 'Oo0' }.to raise_error(StandardError)
       expect { pixel.colour = 'O0' }.to raise_error(StandardError)
       expect { pixel.colour = 'o0' }.to raise_error(StandardError)
     end
   end
  end
end

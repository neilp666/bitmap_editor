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
      it 'It should be invalid' do
        expect { pixel.colour = 'OO' }.to raise_error(StandardError)
      end
    end
  end
end

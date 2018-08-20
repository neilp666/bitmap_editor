require '../lib/pixel'

RSpec.describe Pixel do
  let(:pixel) { Pixel.new }

  describe 'initialize pixel colour' do
    it 'should initialize with default colour `O`' do
      expect(pixel.colour).to eq('O')
    end
  end
 end

require '../lib/bitmap_editor.rb'

describe BitmapEditor do
  before(:example) do
    @bitmap_editor = BitmapEditor.new
  end

  context 'when no bitmap has been generated' do
    it 'raises error when running the L command' do
      expect { @bitmap_editor.execute(['L','1','2','C']) }.to raise_error(StandardError, 'No bitmap found')
    end
  end

    it 'raises error when running the C command' do
      expect { @bitmap_editor.execute(['C']) }.to raise_error(StandardError, 'No bitmap found')
    end


    it 'raises error when running the S command' do
      expect { @bitmap_editor.execute(['S']) }.to raise_error(StandardError, 'No bitmap found')
    end


    it 'raises error when running the V command' do
      expect { @bitmap_editor.execute(['V', '1', '2', '3','O']) }.to raise_error(StandardError, 'No bitmap found')
    end

    it 'raises error when running the H command'  do
      expect { @bitmap_editor.execute(['H', '1', '2', '3', 'O']) }.to raise_error(StandardError, 'No bitmap found')
    end
  end

  describe 'Unknown command' do
    it 'raises Unknown command error' do
      expect { @bitmap_editor.execute(['K']) }.to raise_error(StandardError, 'Unknown command:K')
    end
  end

  describe 'I' do
    context 'when given two integers as arguments' do
      let(:output) { `bin/bitmap_editor ./examples/create_bitmap.txt` }

      it 'generates a new  M x N bitmap image setting all pixels to white (O)' do
        expect(output).to eq(<<~EOS
                                OOOOO
                                OOOOO
                                OOOOO
                                OOOOO
                                OOOOO
                              EOS
                              )
      end
    end
  end

  describe 'L' do
    context 'when give three arugments X, Y and C' do
      let(:output) { `bin/bitmap_editor ./examples/colour_pixel.txt` }

      it 'colours the bitmap pixel (X,Y) with the colour C ' do
        expect(output).to eq(<<~EOS
                                OOOOO
                                OOOOO
                                AOOOO
                                OOOOO
                                OOOOO
                              EOS
                              )
      end
    end
  end

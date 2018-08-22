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

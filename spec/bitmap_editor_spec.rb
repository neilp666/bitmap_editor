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
end

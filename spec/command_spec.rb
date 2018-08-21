require '../lib/command.rb'

describe Command do
  let(:command) { Command.new(input) }

  describe '.supported commands' do
    context 'when using a vaild format I M N' do
      let(:input) { 'I 6 6' }
      it 'does not raise error' do
        should_not_raise_error
      end
    end

      context 'when using invalid format I X' do
        let(:input) { 'I X' }
        it 'it will be invalid & raises an error message' do
          expect { command }.to raise_error(Command::InvalidFormatError)
        end
      end

      context 'using `C`' do
        let(:input) { 'C' }
        it 'does not raise error' do
          should_not_raise_error
        end
      end

      context 'using `S`' do
        let(:input) { 'S'}
        it 'does not raise error' do
          should_not_raise_error
        end
      end

      context '`L X Y C`' do
        let(:input) { 'L 3 2 C' }
        it 'does not raise error' do
          should_not_raise_error
        end
      end

      context '`V X Y1 Y2 C`' do
        let(:input) { 'V 2 1 3 C'}
        it 'does not raise error' do
          should_not_raise_error
        end
      end

      context '`H X1 X2 Y C`' do
        let(:input) { 'H 3 2 2 C' }
        it 'does not raise error'  do
          should_not_raise_error
        end
      end

      context '`S`' do
        let(:input) { 'S' }
        it 'does not raise error' do
          should_not_raise_error
        end
      end
   end
end

require '../lib/command.rb'

describe Command do
  let(:command) { Command.new(input) }

  describe 'Initial setup of bitmap grid' do
    context 'Vaild format I M N' do
      let(:input) { 'I 6 6' }
      it 'should not raise error' do
        should_not_raise_error
      end
    end

      context 'Invalid format I X' do
        let(:input) { 'I X' }
        it 'should raise error' do
          expect { command }.to raise_error(Command::InvalidFormatError)
        end
      end

      context '`C`' do
        let(:input) { 'C' }
        it 'should not raise error' do
          should_not_raise_error
        end
      end

      context '`S`' do
        let(:input) { 'S'}
        it 'should not raise error' do
          should_not_raise_error
        end
      end

      context '`L X Y C`' do
        let(:input) { 'L 2 3 C' }
        it 'should not raise error' do
          should_not_raise_error
        end
      end
   end
end

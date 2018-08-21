require '../lib/command.rb'

describe Command do
  let(:command) { Command.new(input) }

  describe 'Initial setup of bitmap grid' do
    context 'Vaild format I M N' do
      let(:input) { 'I 6 6' }
      it 'should not raise an invalid format error' do
        should_not_raise_error
      end
    end

      context 'Invalid format I X' do
        let(:input) { 'I X' }
        it 'should raise and invalid format error' do
          expect { command }.to raise_error(Command::InvalidFormatError)
        end
      end
   end
end

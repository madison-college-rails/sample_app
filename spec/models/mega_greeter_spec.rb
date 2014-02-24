require 'spec_helper'

describe MegaGreeter do
  let(:greeter) { MegaGreeter.new(names) }

  context 'when names is nil' do
    let(:names) { nil }

    describe '#say_hi' do
      it 'is three dots' do
        expect(greeter.say_hi).to eq '...'
      end
    end
  end

  context 'when names is an Array' do
    let(:names) { %w(Bob David Jane Sally) }

    describe '#say_hi' do
      it 'is says hi to all names' do
        expect(greeter.say_hi).to eq ['Hello Bob!', 'Hello David!', 'Hello Jane!', 'Hello Sally!']
      end
    end
  end

  context 'when names is a String' do
    let(:names) { "Bob David Jane Sally" }

    describe '#say_hi' do
      it 'is says hi to names' do
        expect(greeter.say_hi).to eq 'Hello Bob David Jane Sally!'
      end
    end
  end
end

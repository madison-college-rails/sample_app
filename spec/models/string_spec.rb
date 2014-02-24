require 'spec_helper'

describe String do
  describe '#shuffle' do
    it 'is an instance method' do
      expect('').to respond_to :shuffle
    end

    it 'returns a string' do
      expect(''.shuffle).to be_a String
    end

    it 'returns the shuffled characters as a string' do
      Array.any_instance.stub(:shuffle) { %w(s h u f f l e d) }

      expect(''.shuffle).to eq 'shuffled'
    end
  end
end

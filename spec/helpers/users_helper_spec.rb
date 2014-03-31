require 'spec_helper'

describe UsersHelper do
  describe '#gravatar_for' do
    let(:user) { build :user, email: 'test@example.com' }
    context 'when size is specified' do
      it 'returns the url with the specified size' do
        expect(gravatar_for(user, size: 100)).to include %q(src="https://secure.gravatar.com/avatar/55502f40dc8b7c769880b10874abc9d0?s=100)
      end
    end

    context 'when size is not specified' do
      it 'returns the url with the default size' do
        expect(gravatar_for(user)).to include %q(src="https://secure.gravatar.com/avatar/55502f40dc8b7c769880b10874abc9d0?s=50)
      end
    end
  end
end

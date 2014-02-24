require 'spec_helper'

describe 'some stuff' do
  let(:person1) do
    { first: 'Mark', last: 'McEahern' }
  end

  let(:person2) do
    { first: 'Cynthia', last: 'McEahern' }
  end

  let(:person3) do
    { first: 'Caitlyn', last: 'McEahern' }
  end

  let(:params) do
    {
      father: person1,
      mother: person2,
      child: person3
    }
  end

  describe 'params[:father][:first]' do
    it 'is Mark' do
      expect(params[:father][:first]).to eq 'Mark'
    end
  end
end

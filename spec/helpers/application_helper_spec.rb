require 'spec_helper'

describe ApplicationHelper do
  describe '#full_title' do
    context 'when page_title is specified' do
      let(:page_title) { 'About' }

      it 'is the base title and the page title combined' do
        expect(helper.full_title(page_title)).to eq 'Ruby on Rails Tutorial Sample App | About'
      end
    end

    context 'when page_title is empty' do
      let(:page_title) { '' }

      it 'is the base title and the page title combined' do
        expect(helper.full_title(page_title)).to eq 'Ruby on Rails Tutorial Sample App'
      end
    end
  end
end


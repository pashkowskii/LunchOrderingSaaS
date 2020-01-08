# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Menu do
  subject { described_class.new(title: 'Olivie', price: '133.43', category: 'salad', day: 'monday') }

  describe 'validations' do
    describe 'title' do
      it 'should be present' do
        expect(subject).to be_valid
        subject.title = nil
        expect(subject).to_not be_valid
      end
    end

    describe 'price' do
      it 'should be present' do
        expect(subject).to be_valid
        subject.price = nil
        expect(subject).to_not be_valid
      end
    end

    describe 'category' do
      it 'should be present' do
        expect(subject).to be_valid
        subject.category = nil
        expect(subject).to_not be_valid
      end
    end

    describe 'day' do
      it 'should be present' do
        expect(subject).to be_valid
        subject.day = nil
        expect(subject).to_not be_valid
      end
    end
  end
end

# frozen_string_literal: true

require 'hexlet_code/tag'

RSpec.describe Tag do
  let(:tag)                     { described_class.build('br') }
  let(:tag_and_attr)            { described_class.build('img', src: 'path/to/image') }
  let(:tag_and_two_attr)        { described_class.build('input', type: 'submit', value: 'Save') }
  let(:double_tag_and_content)  { described_class.build('label') { 'Email' } }
  let(:double_tag_attr_content) { described_class.build('label', for: 'email') { 'Email' } }
  let(:double_tag)              { described_class.build('div') }

  it 'returns a tag name' do
    expect(tag).to eq('<br>')
  end

  it 'returns a tag name and attribut' do
    expect(tag_and_attr).to eq('<img src="path/to/image">')
  end

  it 'returns a tag and two attributes' do
    expect(tag_and_two_attr).to eq('<input type="submit" value="Save">')
  end

  it 'returns double tag and content' do
    expect(double_tag_and_content).to eq('<label>Email</label>')
  end

  it 'returns double tag, attributes and content' do
    expect(double_tag_attr_content).to eq('<label for="email">Email</label>')
  end

  it 'returns double tag' do
    expect(double_tag).to eq('<div>')
  end
end

# frozen_string_literal: true

require 'hexlet_code'

RSpec.describe HexletCode do
  let(:user) { Struct.new(:name, :job, keyword_init: true) }
  let(:rob) { user.new(name: 'rob') }
  let(:form) { described_class.form_for(rob) }
  let(:form_tag) { described_class.form_for(rob, '/users') }

  it 'add name' do
    expect(rob.inspect).to eq('#<struct name="rob", job=nil>')
  end

  it 'generation HTML form' do
    expect(form).to eq('<form action="#" method="post"></form>')
  end

  it 'the generator can accept url' do
    expect(form_tag).to eq('<form action="/users" method="post"></form>')
  end
end

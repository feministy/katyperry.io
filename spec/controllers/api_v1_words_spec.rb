require 'spec_helper'

describe '/api/v/words.json' do
  before do
    @dict = Helpers::DICTIONARY.map { |w| Word.create!(text: w) }
    get 'api/v1/words.json&count=5'

    result = JSON.parse(last_response.body)
    @words = result["words"]
  end

  it 'works' do
    expect(last_response.status).to eq(200)
  end

  it 'returns an arary' do
    expect(@words).to be_instance_of(Array)
  end

  it 'returns a uniq list' do
    expect(@words.uniq.length).to eq(@words.length)
  end

  it 'returns 5 words' do
    expect(@words).to have_exactly(5).items
  end
end

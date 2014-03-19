require 'spec_helper'

describe '/api/v/words.json' do
  before do
    words = Helpers::DICTIONARY.map { |w| Word.create!(text: w) }
  end

  it 'works' do
    get 'api/v1/words.json&count=5'
  end
end

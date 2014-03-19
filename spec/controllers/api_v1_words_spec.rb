require 'spec_helper'

describe '/api/v/words.json' do
  before do
    @dictionary = Helpers::DICTIONARY.map { |w| Word.create!(text: w) }
    @dict_words = @dictionary.map(&:text)
  end

  context '/' do
    before do
      get 'api/v1/words.json&count=5'
      result = JSON.parse(last_response.body)
      @words = result["words"]
    end

    it 'works' do
      expect(last_response.status).to eq(200)
    end

    it 'returns an arary inside of json' do
      expect(@words).to be_instance_of(Array)
    end

    it 'returns a uniq list' do
      expect(@words.uniq.length).to eq(@words.length)
    end

    it 'returns 5 words' do
      expect(@words).to have_exactly(5).items
    end
  end

  context '&capitalize' do
    before do
      get 'api/v1/words.json&count=5&capitalized'
      result = JSON.parse(last_response.body)
      @words = result["words"]
    end

    it 'works' do
      expect(@dict_words.map(&:capitalize)).to include(@words.first)
    end
  end

  context '&all_caps' do
    before do
      get 'api/v1/words.json&count=5&all_caps'
      result = JSON.parse(last_response.body)
      @words = result["words"]
    end

    it 'works' do
      expect(@dict_words.map(&:upcase)).to include(@words.first)
    end
  end
end

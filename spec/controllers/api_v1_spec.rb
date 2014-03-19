require 'spec_helper'

describe 'api/v1' do

  before do
    word = create(:word)
    excuse = create(:excuse)

    @word = { "word" => word.text }
    @excuse = { "excuse" => excuse.text }
  end

  context '/word.json' do
    it 'works' do
      get '/api/v1/word.json'
      expect(last_response.body).to eq(@word.to_json)
    end
  end
end
require 'spec_helper'

describe 'api/v1' do
  context '/word.json' do
    it 'works' do
      expect = { word: "taco" }.to_json
      get '/api/v1/word.json'
      expect(last_response.body).to eq(expect)
    end
  end
end
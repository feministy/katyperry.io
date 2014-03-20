require 'spec_helper'

describe '/api/v/word.json' do
  before do
    @word = create_word
  end

  it 'is successful' do
    get '/api/v1/word.json'
    expect(last_response.status).to eq(200)
  end

  it 'returns word' do
    get '/api/v1/word.json'
    expect(last_response.body).to include("text")
  end

  it '&all_caps' do
    get '/api/v1/word.json&all_caps'
    expect(last_response.body).to include(@word.text.upcase)
  end

  it '&capitalized' do
    get '/api/v1/word.json&capitalized'
    expect(last_response.body).to include(@word.text.capitalize)
  end
end

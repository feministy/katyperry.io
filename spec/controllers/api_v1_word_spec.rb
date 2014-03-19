require 'spec_helper'

describe '/api/v/word.json' do
  before do
    @word = Word.create!(text: "smile")
    @word = { "word" => @word.text }
  end

  it 'is successful' do
    get '/api/v1/word.json'
    expect(last_response.status).to eq(200)
  end

  it 'returns word' do
    get '/api/v1/word.json'
    expect(last_response.body).to include("word")
  end

  it '&all_caps' do
    @word["word"] = @word["word"].upcase
    get '/api/v1/word.json&all_caps'
    expect(last_response.body).to eq(@word.to_json)
  end

  it '&capitalized' do
    @word["word"] = @word["word"].capitalize
    get '/api/v1/word.json&capitalized'
    expect(last_response.body).to eq(@word.to_json)
  end
end

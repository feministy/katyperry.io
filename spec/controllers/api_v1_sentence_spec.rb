require 'spec_helper'

describe '/api/v1/sentence.json' do
  before do
    @lyric = "She's got that one international smile."
    @album = Album.create!(title: "PRISM")
    @sentence = Sentence.create!(text: @lyric, excuse: false, album: @album)
  end

  context '/' do
    before do
      get '/api/v1/sentence.json'
      @result = JSON.parse(last_response.body)
      @sentence = @result["text"]
    end

    it 'works' do
      expect(last_response.status).to eq(200)
    end

    it 'returns a lyric' do
      expect(@sentence).to eq(@lyric)
    end
  end
end
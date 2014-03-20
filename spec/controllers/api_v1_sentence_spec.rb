require 'spec_helper'

describe '/api/v1/sentence.json' do
  before do
    @album = create_album_prism
    sentence = create_sentence(@album)
    @lyric = sentence.text
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

  context '&excuse=true' do
    before do
      excuse = create_excuse(@album)
      @excuse = excuse.text
      get '/api/v1/sentence.json&excuse=true'
      @result = JSON.parse(last_response.body)
      @sentence = @result["text"]
    end

    it 'works' do
      expect(last_response.status).to eq(200)
    end

    it 'returns a lyric' do
      expect(@sentence).to eq(@excuse)
    end
  end

  context '&excuse=false' do
    before do
      get '/api/v1/sentence.json&excuse=false'
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
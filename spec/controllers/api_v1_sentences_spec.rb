require 'spec_helper'

describe '/api/v1/sentences.json' do
  before do
    create_albums
    create_excuses(5, @ootb)
    create_sentences(5, @ootb)
    create_excuses(5, @td)
    create_sentences(5, @td)
    create_excuses(5, @prism)
    create_sentences(5, @prism)
  end

  context '&count=:num' do
    before do
      get '/api/v1/sentences.json&count=10'
      @result = JSON.parse(last_response.body)
    end

    it 'works' do
      expect(last_response.status).to eq(200)
    end

    it 'returns an array' do
      expect(@result["items"]).to be_instance_of(Array)
    end

    it 'returns the correct number of sentences' do
      expect(@result["items"]).to have(10).items
    end
  end

  context '&excuse=true' do
    before do
      get '/api/v1/sentences.json&count=10&excuse=true'
      @result = JSON.parse(last_response.body)
    end
  end

  context '&excuse=false' do
    before do
      get '/api/v1/sentences.json&count=10&excuse=true'
      @result = JSON.parse(last_response.body)
    end
  end

  context '&album=one_of_the_boys' do
    before do
      get '/api/v1/sentences.json&count=10&album=one_of_the_boys'
      @result = JSON.parse(last_response.body)
    end
  end

  context '&album=teenage_dream' do
    before do
      get '/api/v1/sentences.json&count=10&album=teenage_dream'
      @result = JSON.parse(last_response.body)
    end
  end

  context '&album=prism' do
    before do
      get '/api/v1/sentences.json&count=10&album=prism'
      @result = JSON.parse(last_response.body)
    end
  end
end
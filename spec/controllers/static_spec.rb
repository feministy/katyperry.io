require 'spec_helper'

describe 'Static Controller' do
  context 'get /' do
    before do
      get '/'
    end

    it 'works' do
      expect(last_response.status).to eq(200)
    end

    it 'gets index.slim' do
      expect(last_response.body).to include("Katy Perry")
    end
  end

  context 'get/css/*' do
    before do
      get '/css/application.css'
    end

    it 'works' do
      expect(last_response.status).to eq(200)
    end
  end
end
require 'spec_helper'

describe 'Static Controller' do
  context 'get /' do
    it 'works' do
      get '/'
      expect(last_response.status).to eq(200)
    end
  end
end
require 'sinatra/contrib'

namespace '/api/v1/word.json' do
  get '&all_caps' do
    json word: get_word.upcase
  end

  get '&capitalized' do
    json word: get_word.capitalize
  end

  get '' do
    json word: get_word
  end
end
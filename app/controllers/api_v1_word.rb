require 'sinatra/contrib'

namespace '/api/v1/word.json' do

  get '' do
    json word: get_word
  end

  get '&all_caps' do
    json word: get_word.upcase
  end

  get '&capitalized' do
    json word: get_word.capitalize
  end

end
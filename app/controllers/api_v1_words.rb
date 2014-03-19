require 'sinatra/contrib'

namespace '/api/v1/words.json' do

  get '&count=:num' do
    json words: get_words(params[:num])
  end

end
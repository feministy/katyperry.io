require 'sinatra/contrib'

namespace '/api/v1/words.json&count=:num' do
  get '&capitalized' do
    json words: get_words(params[:num]).map(&:capitalize)
  end

  get '&all_caps' do
    json words: get_words(params[:num]).map(&:upcase)
  end

  get '' do
    json words: get_words(params[:num]), taco: @taco
  end

end
namespace '/api/v1/words.json&count=:num' do
  get '&capitalized' do
    json items: get_words(params[:num]).map(&:capitalize)
  end

  get '&all_caps' do
    json items: get_words(params[:num]).map(&:upcase)
  end

  get '' do
    json items: get_words(params[:num])
  end
end
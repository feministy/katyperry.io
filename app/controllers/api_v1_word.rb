namespace '/api/v1/word.json' do
  get '&all_caps' do
    json text: get_word.upcase
  end

  get '&capitalized' do
    json text: get_word.capitalize
  end

  get '' do
    json text: get_word
  end
end
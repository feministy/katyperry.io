namespace '/api/v1' do

  namespace '/word.json' do
    get '' do
      json word: get_word
    end

    get '&all_caps' do
      json word: get_word.upcase
    end
  end

  namespace '/words.json' do
    get '' do
      json words: get_words(params[:num])
    end
  end

end
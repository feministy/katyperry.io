namespace '/api/v1/sentence.json' do
  get '&excuse=:bool' do
    bool = params[:bool]
    json text: get_sentence(bool)
  end

  get '' do
    json text: get_sentence
  end
end


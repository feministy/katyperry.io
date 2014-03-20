namespace '/api/v1/sentence.json' do
  get '&excuse=false' do
    # todo exclude excuse
  end

  get '&excuse=true' do
    # todo excuse only
  end

  get '' do
    json content: get_sentence
  end
end


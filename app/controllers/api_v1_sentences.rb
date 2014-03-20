namespace '/api/v1/sentences.json&count=:num' do
  get '&excuses=:bool' do
    json items: get_sentences(params[:num], params[:bool])
  end

  get '&album=:title' do
  end

  get '' do
    json items: get_sentences(params[:num])
  end
end


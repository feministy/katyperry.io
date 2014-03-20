namespace '/api/v1/sentences.json&count=:num' do
  get '' do
    json items: get_sentences(params[:num])
  end

  get '&excuses=:bool' do
    json items: get_sentences(params[:num], params[:bool])
  end

  get '&album=one_of_the_boys' do
  end

  get '&album=teenage_dream' do
  end

  get '&album=prism' do
  end
end


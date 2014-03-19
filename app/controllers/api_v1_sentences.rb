namespace '/api/v1/sentences.json&count=:num' do
  get '' do
    # todo
    # get random sentence
  end

  get '&excuses=false' do
    # todo exclude excuses
  end

  get '&excuses=true' do
    # todo excuses only
  end
end


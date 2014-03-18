namespace '/api/v1' do
  get '/word.json' do
    json word: "taco"
  end
end
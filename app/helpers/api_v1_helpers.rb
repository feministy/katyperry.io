module ApiV1Helpers
  def get_word
    get_words(1).first
  end

  def get_words(num)
    Word.limit(num).order("RANDOM()").pluck(:text)
  end
end

helpers ApiV1Helpers
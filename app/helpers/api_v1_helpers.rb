module ApiV1Helpers
  def get_word
    get_words(1).first
  end

  def get_words(num)
    Word.limit(num).order("RANDOM()").pluck(:text)
  end

  def get_sentence(excuse=false)
    get_sentences(1, excuse).first
  end

  def get_sentences(num, excuse=false)
    if !excuse
      Sentence.limit(num).order("RANDOM()").pluck(:text)
    else
      Sentence.limit(num).order("RANDOM()").where(excuse: true).pluck(:text)
    end
  end
end

helpers ApiV1Helpers

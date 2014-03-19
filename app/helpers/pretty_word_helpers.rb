module PrettyWordHelpers
  # Excepts a string; word or a sentence
  # Will only process the first word if it's a sentence
  def decapitalize(word)
    if /\A[I](\s|\W)/.match(word)
      word
    else
      word = word[0].downcase + word[1..-1]
    end
  end

  # Expects a string
  def end_punctuation(sentence_string)
    if /\?$/.match(sentence_string[-1])
      sentence_string
    else
      sentence_string = sentence_string + '.'
    end
  end
end
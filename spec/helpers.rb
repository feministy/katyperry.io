require 'seed_helpers'

module Helpers
  include SeedHelpers

  def create_albums
    Album.create!(title: "One of the Boys")
    Album.create!(title: "Teenage Dream")
    Album.create!(title: "PRISM")
  end

  def create_album_ootb
    Album.create!(title: "One of the Boys")
  end

  def create_album_td
    Album.create!(title: "Teenage Dream")
  end

  def create_album_prism
    Album.create!(title: "PRISM")
  end

  def create_sentence(album)
    create_sentences(1, album).first
  end

  def create_excuse(album)
    create_sentences(1, album, true).first
  end

  def create_word
    create_words(1).first
  end

  def create_sentences(num, album, excuse=false)
    if album.title == "PRISM"
      lines = prism.sample(num)
    elsif album.title == "Teenage Dream"
      lines = teenage_dream.sample(num)
    elsif album.title == "One of the Boys"
      lines = one_of_the_boys.sample(num)
    end
    sentences = lines.map do |sentence|
      Sentence.create!(text: sentence, excuse: excuse, album: album)
    end
    sentences
  end

  def create_excuses(num, album)
    create_sentences(num, album, true)
  end

  def create_words(num)
    dict = dictionary.sample(num)
    words = dict.map do |word|
      Word.create!(text: word)
    end
    words
  end
end
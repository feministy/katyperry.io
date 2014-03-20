require_relative 'data/albums_teenage_dream'
require_relative 'data/albums_prism'
require_relative 'data/albums_one_of_the_boys'
require_relative 'data/words'
require_relative 'data/excuses'

ootb = Album.create!(title: "One of the Boys")
td = Album.create!(title: "Teenage Dream")
prism = Album.create!(title: "PRISM")

WORDS.each do |word|
    Word.create!(text: word)
end

EXCUSES.each do |excuse|
  Sentence.create!(text: excuse, excuse: true)
end

ONE_OF_THE_BOYS.each do |sentence|
  Sentence.create!(text: sentence, album: ootb)
end

TEENAGE_DREAM.each do |sentence|
  Sentence.create!(text: sentence, album: td)
end

PRISM.each do |sentence|
  Sentence.create!(text: sentence, album: prism)
end
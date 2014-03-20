require 'spec_helper'

describe 'ApiV1Helpers' do
  before do
    @album = create_album_prism
    @words = create_words(10)
    @sentences = create_sentences(10, @prism)
    @excuses = create_excuses(10, @prism)
  end

  context '#get_word' do
  end

  context '#get_words' do
  end

  context '#get_sentence' do
  end

  context '#get_sentences' do
  end
end
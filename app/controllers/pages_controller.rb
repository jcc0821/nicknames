
class PagesController < ApplicationController

  def home

    @adj = Wordnik.word.get_random_word(include_part_of_speech: "adjective", min_corpus_count: 0, max_corpus_count: -1, min_dictionary_count: 1, max_dictionary_count: -1, min_length: 1, max_length: 8)
    @adj_def = Wordnik.word.get_definitions(@adj["word"])


    @noun = Wordnik.word.get_random_word(include_part_of_speech: "noun", min_corpus_count: 0, max_corpus_count: -1, min_dictionary_count: 1, max_dictionary_count: -1, min_length: 1, max_length: 12)
    @noun_def = Wordnik.word.get_definitions(@noun["word"])

    respond_to do |format|
      format.js 
      format.html
    end

  end

end

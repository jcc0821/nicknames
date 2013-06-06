class PagesController < ApplicationController
  def home
    @a = Wordnik.word.get_definitions('hysterical')
    @b = 'hello'

    @adjective1 = Wordnik.words.randomWord(includePartOfSpeech: "adjective", minLength: "1")
    @adjective2 = Wordnik.words.randomWord(hasDictionaryDef: "false", includePartOfSpeech: "adjective", minLength: "1")

    @adverb1 = Wordnik.words.randomWord(includePartOfSpeech: "adverb", minLength: "1")
    @adverb2 = Wordnik.words.randomWord(hasDictionaryDef: "false", includePartOfSpeech: "adverb", minLength: "1")
  end

  def result
  end
end

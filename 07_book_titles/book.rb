class Book

  SMALL_WORDS = %w[and or of in the over to the a an but]
  attr_reader :title

  def title=(title)
    @title = Book.titleize(title)
  end

  def self.titleize(title)
    title.capitalize.split(/\W/).map do |word|
      SMALL_WORDS.include?(word) ? word : word.capitalize
    end.join(" ")
  end

end
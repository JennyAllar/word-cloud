class WordCloud
  def initialize(quote)
    @quote = quote.chomp
  end
  
  def words
    p @quote.split(':')[1]
  end
end
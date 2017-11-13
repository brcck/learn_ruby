class Book
  attr_writer :title

  def title
    formatted = @title.capitalize.split(" ")
    formatted.each do |word|
      word.capitalize! unless ["a", "an", "the", "of", "in", "and"].include? word.downcase
    end
    formatted.join(" ")
  end
end

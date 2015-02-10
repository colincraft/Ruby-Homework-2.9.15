class Greeter

  def greet
  	"hello"
  end

  def quote(tag)
  	quotes = {:life => ["The best revenge is massive success. <br>", "I'm gonna live till I die. <br>", "You may be a puzzle, but I like the way the parts fit. <br>"],
 		:alcohol => ["This is another quote"]}
		tag = tag.to_sym
		quotes[tag]
  end
end
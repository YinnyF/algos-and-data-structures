class Node
# value (one character)
# `word` (true / false value which tells you if this is a valid word)
# `next` array (stores all the characters (as `Node` objects) that come after this one in the tree)
  attr_reader :value, :next
  attr_accessor :word

  def initialize(value)
    @value = value
    @word = false
    @next = []
  end
end

class Trie
  def initialize
    # holds the root node
    @root = Node.new("*")
  end

  def add_word(word)
    # array of letters in word
    letters = word.chars
    base = @root
    # find/add the letter as a node to the base, and store the next characters in an array
    # set the new base to that node that was found/created
    # iterate through each letter in the word
    letters.each { |letter| base = add_character(letter, base.next) }

    # sets that node as end of the word
    base.word = true
  end

  def include?(word)
    find_word(word) { |found, base| return found && base.word }
  end

  # Depth First Search algorithm
  def find_words_starting_with(prefix)
    # keeps track of unvisited nodes
    stack = []
    words = []
    # keeps track of the current string
    prefix_stack = []

    stack << find_word(prefix)
    prefix_stack << prefix.chars.take(prefix.size - 1)

    return [] unless stack.first

    until stack.empty?
      node = stack.pop

      prefix_stack.pop and next if node == :guard_node

      prefix_stack << node.value
      stack << :guard_node

      words << prefix_stack.join if node.word

      node.next.each { |n| stack << n }
    end

    words
  end

  private

  def find_word(word)
    # array of letters in word
    letters = word.chars
    base = @root

    word_found = letters.all? { |letter| base = find_character(letter, base.next) }

    yield word_found, base if block_given?

    base
  end

  def add_character(character, trie)
    # trie is an array
    # makes a new node if that character isnt found, or verifies that that char exists in the "next" chars array
    # returns the node
    trie.find{ |n| n.value == character } || add_node(character, trie)
  end
  
  def find_character(character, trie)
    trie.find { |n| n.value == character }
  end

  def add_node(character, trie)
    Node.new(character).tap { |new_node| trie << new_node }
  end

end

# examples on usage
trie = Trie.new
trie.add_word("cat")
trie.add_word("cap")
trie.add_word("cape")
trie.add_word("camp")

p trie.include?("cape")
# true
p trie.include?("ca")
# false
p trie.find_words_starting_with("ca")
# ["camp", "cap", "cape", "cat"] 

=begin
  Useful resources for dictionaries
  https://raw.githubusercontent.com/first20hours/google-10000-english/master/20k.txt
  https://raw.githubusercontent.com/dwyl/english-words/master/words_alpha.txt
=end

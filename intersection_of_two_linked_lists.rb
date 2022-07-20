
class Node
  def initialize(val, next = nil)
    @val = val
    @next = next
  end

  attr_accessor :val, :next
end

class LinkedList 
  def initialize
    @head = nil
    @tail = nil
  end

  def add(number)
    newnode = new Node(number)
    if @tail == nil 
      @head = @tail = newnode
    else
      @tail.next = newnode
      @tail = newnode
    end
  end
end
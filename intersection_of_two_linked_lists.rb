
class Node
  def initialize(val, next_node = nil)
    @val = val
    @next_node = next_node
  end

  attr_accessor :val, :next_node
end

class LinkedList 
  def initialize
    @head = nil
    @tail = nil
  end

  def add(number)
    newnode = Node.new(number)
    if @tail == nil 
      @head = @tail = newnode
    else
      @tail.next_node = newnode
      @tail = newnode
    end
  end

  def add_array(arr)
    (0..arr.length).each { |u| 
      add(arr[u])
    }
  end

  def print()
    node = @head

    while node 
      puts node.val
      node = node.next_node
    end
  end

  attr_accessor :head, :tail
end

arr = [1,3,4,5,6]

myList = LinkedList.new()
my_list_two = LinkedList.new()

myList.add_array(arr)
my_list_two.add_array([4,5,6,7,4,3,9])
myList.print()


def getIntersectionNode()
  node = myList.head 
  node_two = my_list_two.head

  countNode = 0
  countNode2 = 0
  array1 = []
  array2 = []
  isRepeated = false 

  while node 
    countNode = countNode + 1
    if array1.include?(node.val) 
      isRepeated = true
    end
    array1.push(node.val)
    node = node.next_node
  end

  while node_two
    countNode2 = countNode2 + 1
    if array2.include?(node_two.val)
      isRepeated = true
    end
    array2.push(node_two.val)
    node_two = node_two.next_node
  end

  node = myList.head 
  node_two = my_list_two.head



end

  

  # ['Cat', 'Dog', 'Bird'].include?('Dog')
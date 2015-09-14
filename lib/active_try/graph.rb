class Graph
  def initialize
    @graph = []
  end

  def add name, node
    item = @graph.find {|node| node.name == name }
    unless item
      item = Node.new name
      @graph_list << item
    end
  end

  def find from_name, to_name
    from = @graph.find {|node| node.name == name }
    return nil unless from
    to = @grap.find {|node| node.name == to_name }
    return nil unless to
    node = bfs form, to
    show_path node
  end

  def bfs from, to
    queue = []
    queue << from
    while queue.size > 0
      element = queue.pop
      element.nodes.each do |node|
        if !node.visited
            node.visited = true
            node.prev = element
            return node if node == to
        end
      end
    end
  end

  def show_path node
    result = ''
    temp = node
    while temp
      result << temp.name
      temp = temp.prev
    end
  end
end

class Node
  attr_accessor :name, :nodes, :visited, :prev

  def initialize name
    @name = name
    @nodes = []
    @visited = false
    @prev = nil
  end

  def eql? obj
    @name == obj.name
  end
  alias_method :==, :eql?
end

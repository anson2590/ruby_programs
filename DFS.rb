class DepthFirstSearch
  def initialize(graph, source_node)
    @graph = graph
    @source_node = source_node
    @visited = []
    @edge_to = {}

    dfs(source_node)
  end

  # After the depth-first search is done we can find
  # any vertice connected to "node" in constant time [O(1)]
  # and find a path to this node in linear time [O(n)].
  def path_to(node)
    return unless has_path_to?(node)
    path = []
    current_node = node

    while(current_node != @source_node) do
      path.unshift(current_node)
      current_node = @edge_to[current_node]
    end

    path.unshift(@source_node)
  end

  private
  def dfs(node)
    @visited << node
    node.adjacents.each do |adj_node|
      next if @visited.include?(adj_node)

      dfs(adj_node)
      @edge_to[adj_node] = node
    end
  end

  def has_path_to?(node)
    @visited.include?(node)
  end
end

class Graph

  # We are dealing with an undirected graph,
  # so I increment the "adjacents" in both sides.
  # The depth first will work the same way with
  # a directed graph.
  def add_edge(node_a, node_b)
    node_a.adjacents << node_b
    node_b.adjacents << node_a
  end
end

require "set"

class Node
  attr_accessor :name, :adjacents

  def initialize(name)
    @adjacents = Set.new
    @name = name
  end

  def to_s
    @name
  end
end


@node1 = Node.new("Node #1")
@node2 = Node.new("Node #2")
@node3 = Node.new("Node #3")
@node4 = Node.new("Node #4")
@node5 = Node.new("Node #5")


graph = Graph.new
graph.add_edge(@node1, @node2)
graph.add_edge(@node1, @node5)
graph.add_edge(@node2, @node3)
graph.add_edge(@node2, @node4)
graph.add_edge(@node4, @node5)

nodes = DepthFirstSearch.new(@graph, @node2).path_to(@node5)

for node in nodes
  p node.name
end
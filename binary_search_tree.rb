require "node"

class BinarySearchTree

  def initialize
    @nodes = []
  end

  def insert(rating, movie)
    node = Node.new(rating, movie)
    node = {node.movie => node.rating}
    if @nodes.empty?
      @nodes << node
    elsif @nodes.middle.rating > node.rating
      if @nodes.middle.right.exists?
        if @nodes.middle.right.rating > node.rating
          @nodes.middle.right.right = node
        else
          @nodes.middle.right.left = node
        end
      else
        node.right
      end 
    else
      node.left
    end
  end

  def include?(rating)
    @nodes.each do |node|
      true if node.rating == rating
    end
  end

  def depth_of

  end

end

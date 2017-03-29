class Tree

  attr_reader(:name, :children)
  attr_accessor :parent

  def initialize(name)
    @name = name
    @children = []
  end

  def add_child(child)
    @children << child
    child.parent = self
  end

  def root?
    parent.nil?
  end

  def leaf?
    children.empty?
  end

  def siblings
    root? ? [] : parent.children - [self]
  end


  def to_s
    @name
  end


  # Similar to acts_as_tree .descendants method
  # each_with_object will put each child into the do/|| block in the 'child' variable.
  # array_of_children comes from the first argument from each_with_object, in this case
  # we are giving 'each_with_object' the 'children' array.
  # You could change children to @children because it is an instance variable.
  # array_of_children is modified with each iteration.
  def descendants
    # This line is talking about the direct children (Paul, Peter and Mary,
    # if you were starting with Fred.)
    children.each_with_object(children) { |child, array_of_children|
      # This line is talking the grand children and so forth (following on,
      # Pan and Rabbit).
      array_of_children.concat child.descendants
      # uniq ensures that no children get counted twice (shouldn't happen anyway)
    }.uniq
  end



  def ancestors
    # This commented out part was taken directly from acts_as_tree
    # changed it to be more understandable.
    # They both do the same thing.
    # node, nodes = self, []
    # nodes << node = node.parent while node.parent
    # nodes

    current_tree = self
    trees = []
    # Assuming grandchild1 is given, this will iterate twice.
    # current_tree will initially be grandchild1
    # after the first loop, it will become child1
    # after the second loop it will become parent.
    # Then the loop will end, because parent is an orphan.
    while current_tree && current_tree.parent
      current_tree = current_tree.parent
      # << this is the same as trees.push
      trees << current_tree
    end
    # Going on that assumption, the final array would be (child1, parent).
    trees
  end


  def detach_node!
    parent.children.delete self
    @parent = nil
  end
end

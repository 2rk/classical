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
end
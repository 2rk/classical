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

  def ancestor
    if root?
      []
    else
      parent.ancestor.unshift parent
    end
  end

  def descendant
    if leaf?
      []
    else
      all_descendants = children
      children.each do |child|
        all_descendants = all_descendants + child.descendant
      end
      all_descendants
    end
  end

  def inspect
    "<Tree #{object_id} name=#{name}>"
  end
end

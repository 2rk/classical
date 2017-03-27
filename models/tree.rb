class Tree

  attr_reader :name
  attr_accessor :parent, :children

  def initialize(name)
    @name = name
    @children = []
  end

  def add_child(child)
    if child.parent.nil?
      @children << child
      child.parent = self
    end
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

  def ancestors
    ancestors = []
    return ancestors if root?
    next_ancestor = parent
    until next_ancestor.nil?
      ancestors << next_ancestor
      next_ancestor = next_ancestor.parent
    end
    ancestors
  end

  def descendants
    descendants_array = []
    unless leaf?
      children.each do |child|
        descendants_array << child
        unless child.leaf?
          descendants_array << child.descendants
        end
      end
    end
    descendants_array.flatten
  end

  def detach_node
    parent.children = parent.children - [self]
    # Not sure why this next line needed 'self.parent' rather than just 'parent'
    # It it because I've already referred to the other trees and/or self in the
    # previous line? Is it related to removing self from the array?
    # Either way, it works now but doesn't work if i remove 'self.'
    self.parent = nil
  end
end
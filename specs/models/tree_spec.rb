require 'rspec'
require_relative "../../models/tree"
=begin
Fred -
        Paul
        Peter
              -  Pan
              -  Rabbit
        Mary
=end

describe Tree do

  describe '.new' do
    it 'creates a new object and set name' do
      tree = Tree.new('Fred')
      expect(tree.name).to eq('Fred')
    end
  end

  describe '#add_child' do
    it 'adds another tree object as a child' do
      fred = Tree.new('Fred')
      peter = Tree.new('Peter')
      fred.add_child(peter)
    end
  end

  describe '#children' do
    it 'returns a list of children' do
      fred = Tree.new('Fred')
      peter = Tree.new('Peter')
      paul = Tree.new('Paul')
      fred.add_child(peter)
      fred.add_child(paul)
      expect(fred.children).to eq([peter, paul])
    end
  end

  describe '#siblings' do
    it 'returns my siblings' do
      fred = Tree.new('Fred')
      peter = Tree.new('Peter')
      paul = Tree.new('Paul')
      mary = Tree.new('Mary')
      fred.add_child(peter)
      fred.add_child(paul)
      fred.add_child(mary)
      expect(paul.siblings).to eq([peter, mary])
    end

    it 'returns empty array when has no siblings' do
      fred = Tree.new('Fred')
      peter = Tree.new('Peter')
      fred.add_child(peter)
      expect(peter.siblings).to be_empty
    end

    it 'should return an empty array when is root node' do
      fred = Tree.new('Fred')
      expect(fred.siblings).to be_empty
    end
  end

  describe '#parent' do
    it 'returns its parent' do
      fred = Tree.new('Fred')
      peter = Tree.new('Peter')
      fred.add_child(peter)
      expect(peter.parent).to eq(fred)
    end
  end

  describe '.root?' do
    it 'returns true when paren is not set' do
      fred = Tree.new('Fred')
      peter = Tree.new('Peter')
      fred.add_child(peter)
      expect(fred.root?).to be_truthy
    end

    it 'returns false when has parent' do
      fred = Tree.new('Fred')
      peter = Tree.new('Peter')
      fred.add_child(peter)
      expect(peter.root?).to be_falsey
    end
  end

  describe '.leaf?' do
    it 'returns true when has no children' do
      fred = Tree.new('Fred')
      peter = Tree.new('Peter')
      expect(peter.leaf?).to be_truthy
    end

    it 'returns false when has children' do
      fred = Tree.new('Fred')
      peter = Tree.new('Peter')
      fred.add_child(peter)
      expect(fred.leaf?).to be_falsey
    end
  end

  describe '.descendants' do
    it 'makes an array of all children of children of children, etc' do
      parent = Tree.new('Parent')
      child1 = Tree.new('Child1')
      child2 = Tree.new('Child2')
      grandchild1 = Tree.new('Grandchild1')
      grandchild2 = Tree.new('Grandchild2')

      parent.add_child(child1)
      parent.add_child(child2)

      child1.add_child(grandchild1)
      child1.add_child(grandchild2)


      descendants = parent.descendants
      expect(descendants).to include(child1, child2, grandchild1, grandchild2)
      expect(descendants).to_not include(parent)
    end
  end

  describe '.ancestors' do
    it 'makes an array of all ancestors' do
      parent = Tree.new('Parent')
      child1 = Tree.new('Child1')
      child2 = Tree.new('Child2')
      grandchild1 = Tree.new('Grandchild1')
      grandchild2 = Tree.new('Grandchild2')

      parent.add_child(child1)
      parent.add_child(child2)

      child1.add_child(grandchild1)
      child1.add_child(grandchild2)

      ancestors = grandchild1.ancestors
      expect(ancestors).to include(child1, parent)
      expect(ancestors).to_not include(child2, grandchild2)
    end
  end

  describe '.detach_node' do
    it 'removes itself from its parent. The child becomes emancipated.' do
      parent = Tree.new('Parent')
      child1 = Tree.new('Child1')
      child2 = Tree.new('Child2')
      grandchild1 = Tree.new('Grandchild1')
      grandchild2 = Tree.new('Grandchild2')

      parent.add_child(child1)
      parent.add_child(child2)

      child1.add_child(grandchild1)
      child1.add_child(grandchild2)

      child1.detach_node!
      expect(parent.children).to_not include(child1)
      expect(child1.parent).to_not eq(parent)
    end
  end
end

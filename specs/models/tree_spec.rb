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
    it 'does not add child if parent already set' do
      fred = Tree.new('Fred')
      peter = Tree.new('Peter')
      tim = Tree.new('Tim')
      fred.add_child(peter)
      tim.add_child(peter)
      expect(tim.children).to be_empty
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

  describe '#root?' do
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

  describe '#leaf?' do
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

  describe '#ancestors' do
    fred = Tree.new('Fred')
    peter = Tree.new('Peter')
    rabbit = Tree.new('Rabbit')
    fred.add_child(peter)
    peter.add_child(rabbit)
    it 'returns empty array for root' do
      expect(fred.ancestors).to be_empty
    end
    it 'returns array of all direct ancestors for self' do
      expect(rabbit.ancestors).to eq([peter, fred])
    end
  end

  describe '#descendants' do
    fred = Tree.new('Fred')
    peter = Tree.new('Peter')
    paul = Tree.new('Paul')
    mary = Tree.new('Mary')
    pan = Tree.new('Pan')
    rabbit = Tree.new('Rabbit')
    fred.add_child(peter)
    fred.add_child(paul)
    fred.add_child(mary)
    peter.add_child(pan)
    peter.add_child(rabbit)
    it 'returns empty array for leaf' do
      expect(rabbit.descendants).to be_empty
    end
    it 'returns array of all children if all children are leafs' do
      expect(fred.descendants).to eq([peter, pan, rabbit, paul, mary])
    end
  end

  describe '#detach_node' do
    fred = Tree.new('Fred')
    peter = Tree.new('Peter')
    paul = Tree.new('Paul')
    mary = Tree.new('Mary')
    pan = Tree.new('Pan')
    rabbit = Tree.new('Rabbit')
    fred.add_child(peter)
    fred.add_child(paul)
    fred.add_child(mary)
    peter.add_child(pan)
    peter.add_child(rabbit)
    peter.detach_node
    it 'removes parent of self' do
      expect(peter.parent).to be_nil
    end
    it 'removes self as child of original parent' do
      expect(fred.children).to eq([paul, mary])
    end

  end
end

require 'rspec'
require_relative "../../models/sarah_tree"
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
  describe '#ancestor' do
    it 'returns my ancestors' do
      fred = Tree.new('Fred')
      peter = Tree.new('Peter')
      pan = Tree.new('Pan')
      rabbit = Tree.new('Rabbit')
      fred.add_child(peter)
      peter.add_child(pan)
      peter.add_child(rabbit)
      expect(pan.ancestor).to eq([peter,fred])
    end
  end
  describe '#descendant' do
    it 'returns my descendants' do
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
      expect(fred.descendant).to eq([peter,paul,mary,pan,rabbit])
    end
  end
end

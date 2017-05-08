require 'rspec'
require_relative '../../models/robot'

describe Robot do
  describe '.new' do
    it 'places a new robot without a position' do
      r2 = Robot.new
      expect(r2.position).to be_nil
      expect(r2.direction).to be_nil
    end
  end
  describe '#place' do
    it 'places the robot in the correct position and direction' do
      r2 = Robot.new
      r2.place(3,3,'N')
      expect(r2.position).to eq([3,3])
      expect(r2.direction).to eq('N')
    end
    it 'will not place the robot with invalid position' do
      r2 = Robot.new
      r2.place(5,2,'E')
      expect(r2.position).to be_nil
      expect(r2.direction).to be_nil
    end
    it 'will not place robot with invalid direction' do
      r2 = Robot.new
      r2.place(3,3,'T')
      expect(r2.position).to be_nil
      expect(r2.direction).to be_nil
    end
  end
  describe '#report' do
    it 'returns the current position and direction' do
      r2 = Robot.new
      r2.place(2,2,'E')
      expect(r2.report).to eq('2,2,E')
    end
  end
  describe '#move' do
    it 'moves the robot one space in the current direction' do
      r2 = Robot.new
      r2.place(2,3,'N')
      r2.move
      expect(r2.position).to eq([2,4])
    end
    it 'does not move the robot off the grid' do
      r2 = Robot.new
      r2.place(4,4,'N')
      r2.move
      expect(r2.position).to eq([4,4])
    end
  end
  describe '#left' do
    it 'turns robot once to the left' do
      r2 = Robot.new
      r2.place(0,0,'N')
      r2.left
      expect(r2.direction).to eq('W')
    end
  end
  describe '#right' do
    it 'turns robot once to the right' do
      r2 = Robot.new
      r2.place(0,0,'W')
      r2.right
      expect(r2.direction).to eq('N')
    end
  end
end
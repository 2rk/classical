require 'rspec'
require_relative "../../models/student"

describe Student do

  context 'adding a new student' do
    it 'creates a new student' do
      student = Student.new('Fred')
      expect(student.name).to eq('Fred')
    end
    it 'and should call the increment_count method' do
      expect(Student).to receive(:increment_count)
      Student.new('')
    end
  end

  describe '.count' do
    context 'when no student added' do
      it 'should return 0' do
        Student.remove_class_variable(:@@count)
        expect(Student.count).to eq(0)
      end
    end
  end

  describe '.increment_count' do
    it 'when I call increment_count the count increase by 1' do
      expect do
        Student.increment_count
      end.to change { Student.count }.by(1)
    end
  end
end

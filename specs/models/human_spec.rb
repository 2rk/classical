require 'rspec'
require_relative "../../models/human"

describe Human do

  describe '#new' do
    it 'initializes a new instance of Human' do
      human = Human.new('Fred')
      expect(human).to be_instance_of Human
    end
  end

  describe '.name' do
    it 'has a name of Fred' do
      human = Human.new('Fred')
      expect(human.name).to eq('Fred')
    end
  end

  describe '.legal_name' do
    it 'that "Fred Frog" returns "Frog, Fred"' do
      human = Human.new('Fred Frog')
      expect(human.legal_name).to eq('Frog, Fred')
    end
  end

  describe '.job_title=' do
    it 'sets the job title for our human instance' do
      human = Human.new('')
      expect(human).to respond_to(:job_title=)
    end
  end

  describe '.job_title' do
    it 'it returns the job title' do
      human = Human.new('')
      human.job_title = 'Guru'
      expect(human.job_title).to eq('Guru')
    end
  end

  describe '.age' do
    it 'it returns the age' do
      human = Human.new('')
      human.age = 20
      expect(human.age).to eq(20)
    end
  end
  describe '.can_drink' do
    it 'it is legal to drink'do
      human = Human.new('')
      human.age = 18
      expect(human.can_drink?).to eq(true)
    end
    it 'it is illegal to drink'do
      human = Human.new('')
      human.age = 10
      expect(human.can_drink?).to eq(false)
    end
  end

  it 'play area' do
    puts Human.new('Sarah').name
  end
end

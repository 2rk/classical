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

  describe '.age=' do
    it 'sets the age for our human instance' do
      human = Human.new('')
      expect(human).to respond_to(:age=)
    end
  end

  describe '.age' do
    it 'returns the age of the human instance' do
      human = Human.new('')
      human.age = 28
      expect(human.age).to eq(28)
    end
  end

  describe '.drinking_age=' do
    it 'sets the local legal drinking age for our human instance' do
      human = Human.new('')
      expect(human).to respond_to(:drinking_age=)
    end
  end

  describe '.drinking_age' do
    it 'returns the local legal drinking age of the human instance' do
      human = Human.new('')
      human.drinking_age = 18
      expect(human.drinking_age).to eq(18)
    end
  end

  describe '.can_drink?' do
    it 'returns true if instance of human is older than drinking_age' do
      human = Human.new('')
      human.age = 20
      human.drinking_age = 18
      expect(human.can_drink?).to be_truthy
    end
  end

  describe '.can_drink?' do
    it 'returns true if instance of human is the same age as drinking_age' do
      human = Human.new('')
      human.age = 21
      human.drinking_age = 21
      expect(human.can_drink?).to be_truthy
    end
  end

  describe '.can_drink?' do
    it 'returns true if instance of human is younger than drinking_age' do
      human = Human.new('')
      human.age = 17
      human.drinking_age = 18
      expect(human.can_drink?).to be_falsey
    end
  end

end

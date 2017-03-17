class Human

  attr_accessor :job_title, :age, :drinking_age
  attr_reader :name

  def initialize value
    @name = value
  end

  def legal_name
    @name.split().reverse.join(', ')
  end

  #@drinking_age = 18

  def can_drink?
    @drinking_age ||= 18
    @age ||= 0
    @age >= @drinking_age
  end
end

class Human

  attr_accessor :job_title, :age, :drinking_age
  attr_reader :name

  def initialize value
    @name = value
  end

  def legal_name
    @name.split().reverse.join(', ')
  end

  def can_drink?
    return @age >= @drinking_age
  end
end

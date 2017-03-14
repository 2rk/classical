class Human

  def initialize value
    @name = value
  end

  def name
    @name
  end

  def legal_name
    first_name = @name.split.first
    last_name = @name.split.last

    last_name + ", " + first_name

    # @name.split(' ', 2).reverse.join(', ')
  end

  # attr_accessor :job_title
  def job_title=(value)
    @job_title = value
  end

  def job_title
    @job_title
  end

  def age=(value)
    @age = value
  end

  def age
    @age
  end

  def drinking_age=(value)
    @drinking_age = value
  end

  def drinking_age
    @drinking_age
  end

  def can_drink?
    return @age >= @drinking_age
  end 
end

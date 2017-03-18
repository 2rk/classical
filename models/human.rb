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

  attr_accessor :job_title
  #def job_title=(value)
#    @job_title = value
#  end

  #def job_title
  #  @job_title
#  end

attr_accessor :age
#  def age
#    @age
#  end

#  def age=(value)
#    @age = value
#    end



def to_drink
  if @age >= 18
    to_drink = true
    else
    to_drink = false
  end
end

end

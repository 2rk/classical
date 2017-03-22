class Student

  attr_accessor :name

  def initialize name
    @name = name
    Student.increment_count
  end

  def self.count
    if defined? @@count
      @@count
    else
      @@count = 0
    end
  end

  def self.increment_count
    @@count = count + 1
  end
end
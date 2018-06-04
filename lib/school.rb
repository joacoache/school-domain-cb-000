# code here!
class School
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if roster.key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster.fetch(grade)
  end

  def sort
    @roster.each do |a, b|
       @roster[a] = @roster[a].sort     
    end
    @roster
  end


end

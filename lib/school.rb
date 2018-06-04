# code here!
class School
  attr_reader :name

  def initialize(name)
    @name = name
  end

  roster = {}

  def add_student(name, grade)
    if roster.key?(grade)
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
    roster
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |a, b|
      b.each do |c|
        c.sort
      end
    end
  end


end

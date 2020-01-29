# code here!
class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end
  
  def grade(num)
    @roster[num]
  end
  
  def sort
    @roster.each_pair{|grade, students|
      @roster[grade] = students.sort
    }
  end

end
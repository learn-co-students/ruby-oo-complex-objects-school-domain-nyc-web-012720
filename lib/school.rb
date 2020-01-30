# code here!
class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    
    def add_student(student_name, grade)
        roster[grade] ||= []    #||= explanation: If the left hand side of the comparison is true, there's no need to check the right hand side.
        roster[grade] << student_name
    end
    
    def grade(student_grade)
      roster[student_grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
          sorted[grade] = students.sort
        end
        sorted
      end
end

school = School.new("Bayside High School")


require 'pry'

class School
    attr_accessor :school_name, :roster

    def initialize (school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, grade)
        if self.roster[grade]
            self.roster[grade] << student_name
        else
            self.roster[grade] = [student_name]
        end
    end

    def grade(level)
        self.roster[level]
    end

    def sort
        self.roster.each_pair do |key, value| 
            self.roster[key] = value.sort
        end

    end
    
end
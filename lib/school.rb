# code here!
require 'pry'
class School
    attr_accessor :roster, :name

    def initialize(name)
        @roster ={}
        @name = name
    end

    def add_student(student_name, grade)

        roster[grade] ||=[]
        roster[grade]<<student_name
    end

    def grade(grade_level)
        @roster[grade_level]
    end

    def sort
        roster.each do |key, value|
            sorted = value.sort

            roster[key] = sorted
        end
    end
end
# code here!
require 'pry'
class School 

    attr_accessor :roster, :add_student

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if @roster[grade]
            @roster[grade] << student
        else
            @roster[grade] = []
            @roster[grade] << student
        end
    end

    def grade(grade_number)
        @roster[grade_number]
    end

    def sort
        @roster.each do |k,v|
            v.sort!
        end 
    end 

end 
# code here!
require 'pry'
class School

    attr_accessor :name, :roster

    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end

    # def roster
    #     @roster = {}
    # end

    def add_student(name, grade_level)
        if !@roster[grade_level]
            @roster[grade_level] = []
            @roster[grade_level] << name
        else
            roster[grade_level] << name
        end
    end
    
    def grade(grade_level)
        roster[grade_level]
    end

    def sort
        sorted = {} #because it's creating a new hash with sorted values, we create a new empty hash
        roster.each do |grade,students|
            sorted[grade] = students.sort #assigns new key and sorted values
        end
        sorted #return new hash
    end


end


# code here!
# code here!
require "pry"
class School    
    attr_accessor :roster, :name

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(name, grade)
        if @roster.has_key?(grade)
            @roster[grade] << name
        else
           result = []
           result << name
          @roster[grade] = result
        end
    end

    def grade(level)
        @roster[level]
    end

    def sort 
        @roster = @roster.select {|key, value| value.sort!{|a,b| a <=> b} }
        @roster 
    end
end 

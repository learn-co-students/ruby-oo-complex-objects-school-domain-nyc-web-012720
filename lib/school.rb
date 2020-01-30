# code here!
require 'pry'
class School 
    def initialize(name)
        @name = name
        @roster = {}
    end 
    attr_writer :name, :roster, :grade, :student_name
    attr_reader :name, :roster, :grade, :student_name

    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade] << student_name
        else 
            @roster[grade] = []
            @roster[grade] << student_name
        end 
    end 

    def grade(grade)
        @roster[grade]
    end 

    def sort
        sort_key = @roster.sort
        sort_key.flatten(1)
        all_sort = []
        sort_key.each do |outer|
            outer.map do |arr| 
                if arr.class == Integer
                    all_sort << arr
                else 
                    all_sort << arr.sort
                end
            end 
        end 
        sorted ={}
        all_sort.each_slice(2) { |item| sorted[item[0]] = item[1] }
        sorted

    end 
end 


# hs = School.new("Clinton")
# hs.add_student("luis", 9)
# hs.add_student("rich", 9)
# hs.add_student("claudia", 10)
# hs.add_student("ingrid", 11)
# hs.add_student("michelle", 9)
# hs.add_student("ivan", 9)
# hs.add_student("rob", 10)
# hs.add_student("maggie", 11)
# pp hs.sort
# code here!
require 'pry'
class School 
    # @@roster={}
    attr_accessor :roster
    def initialize (name, roster={})
        @name = name
        @roster = roster
    end 
    # binding.pry
    def add_student(student_name, student_grade)
        
            if @roster.has_key?(student_grade)
                    @roster[student_grade].push(student_name)
                else
                    @roster[student_grade] = [student_name]
            end
        @roster
     end 

    def roster
        @roster 
        # self.roster
    end
    def grade (arg)
        @roster.has_key?(arg) ? @roster[arg] : nil
    end 
    
    def sort
        final_hash = {}
        roster_sorted = @roster.sort
        roster_sorted.each do |element|
        #     # binding.pry
            element_grade = element[0]
            name_array = element[1] 
            name_array_sorted = name_array.sort
            final_hash[element_grade] = name_array_sorted
        end 
        final_hash
    end 

end 
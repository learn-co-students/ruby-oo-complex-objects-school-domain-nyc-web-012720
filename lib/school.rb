# code here!
clas School
    attr_accessor :name, :student, :grade

    def initialize(name)
        name = @name
        student = @student
    end

    def roster
        roster = {}
    end
    
    def add_student(student, grade)
        roster[:grade] = []
        roster[:grade] << student
    end

end

school = School.new("Bayside High School")


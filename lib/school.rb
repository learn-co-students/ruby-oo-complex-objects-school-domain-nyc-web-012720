class School

attr_accessor :school, :roster, :name, :grade

    def initialize(school)
        @school = school
        @roster = {}
    end
    # def roster
    #     @roster
    # end

    # def roster=(roster)
    #     @roster=roster

    # end
    def add_student(name, grade)
        
        if @roster[grade] != nil
            @roster[grade] << name
        else
            @roster[grade]=[]
            @roster[grade] << name
        end
        @roster
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each {|k,v| v.sort!}
    end
    
end
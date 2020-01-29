class School

    def initialize(school)
        @school=school
        @roster={}

    end

     def roster=(roster)
       @roster=roster
     end


     def roster
        @roster
     end


     def add_student(student,grade)
        
        if @roster[grade]!= nil
            @roster[grade] << student   
        else
            @roster[grade]=[]
            @roster[grade] << student
        end  

        @roster  
     end

     def grade (grade)
        @roster[grade]
     end

     def sort
         @roster.each do |k,v| v.sort! 
         end
     end


end



# school = School.new("Bayside High School")
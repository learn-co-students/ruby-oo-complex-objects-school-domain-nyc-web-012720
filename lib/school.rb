# code here!
require 'pry'
class School

attr_accessor :name, :roster

def initialize(name)
	@name = name
	@roster = {}
end

def add_student(student_name, grade)
	@roster[grade] = [] unless @roster[grade]
	@roster[grade] << student_name
end

def grade(k)
	return @roster[k]
end

def sort
	temp = roster.sort
	result = {}
	temp.each {|v| result[v[0]] = v[1].sort}
	return result
end

end

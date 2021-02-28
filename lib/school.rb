


class School

    attr_reader :roster, :name

    def initialize(name)
        @name = name
        @roster = {}
  
    def add_student(student_name, grade)
        if roster.has_key?(grade)
            roster[grade] << name
        else roster[grade] = [name]
        end
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        roster.each do |grade, students|
            sorted[grade] = students.sort
        end
    end
end
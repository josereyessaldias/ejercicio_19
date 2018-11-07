module Test
  def result
    if nota1*nota2 > 4
      "Estudiante aprobado"
    else
      "Estudiante reprobado"
    end
  end
end

module Attendance
  def student_quantity
    class_variable_get(:@@quantity)
  end
end

class Student
  @@quantity = 0
  include Test
  extend Attendance
  attr_accessor :nombre, :nota1, :nota2
  def initialize(nombre,nota1 = 4,nota2 = 4)
    @nombre = nombre
    @nota1 = nota1.to_f
    @nota2 =  nota2.to_f
    @@quantity += 1
  end
end

10.times do Student.new("oso",3,5) end
c = Student.new("oso",3,5)
puts c.nota1
puts c.result
puts Student.student_quantity

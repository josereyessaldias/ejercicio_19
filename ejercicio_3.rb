class Vehicle
  attr_accessor :model

  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
    puts "el motor se ha encendido"
  end
end

class Car < Vehicle
	@@instances = 0
  def initialize(model, year)
  	super
  	@@instances += 1
  end

  def self.numero_inst
	@@instances
  end

end

a = Vehicle.new('12',12)
puts a.model

10.times do Car.new('23',2) end

puts Car.numero_inst


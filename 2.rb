# Ejercicio 2: Sintaxis
# Corrige el siguiente código para instanciar el objeto y generar la salida de manera correcta.
# class Car(model, year)
#     @model = model
#     @year = year
# end
# car = Car.new('Camaro', 2016)
# puts "Mi auto favorito es un #{car.model} del año #{car.year}!"

class Car
    attr_accessor :model,:year
    def initialize(model, year)
        @model = model
        @year = year
    end
end
car = Car.new('Camaro', 2016)
puts "Mi auto favorito es un #{car.model} del año #{car.year}!"


# TAMBIÉN SE PUEDE DE ESTA FORMA: 

# class Car
#     def initialize(model, year)
#         @model = model
#         @year = year
#         puts "Mi auto favorito es un #{model} del año #{year}!"
#     end
# end
# car = Car.new('Camaro', 2016)
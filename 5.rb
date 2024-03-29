# Ejercicio 5: Traductor entero a código Morse
# Se tiene la clase Morseable que contiene un método de instancia generate_hash los datos de
# traducción de número entero a código morse.

# class Morseable
#     def initialize(number)
#     @number = number
#     end
#     def generate_hash(number)
#     # Esto es una aberración y debe ser refactorizado!
#     h = '-----' if number == 0
#     h = '.----' if number == 1
#     h = '..---' if number == 2
#     h = '...--' if number == 3
#     h = '....-' if number == 4
#     h = '.....' if number == 5
#     h = '-....' if number == 6
#     h = '--...' if number == 7
#     h = '---..' if number == 8
#     h = '----.' if number == 9
#     end
#     def to_morse
#     self.generate_hash(@number)
#     end
#     end
#     m = Morseable.new(3)
#     print m.to_morse


# Se pide:
# Refactorizar el código del método de instancia generate_hash para que los datos estén 
# contenidos en un hash donde los números serán las claves y la traducción los valores.
# El método generate_hash además debe retornar la traducción del número recibido como
# argumento.


class Morseable
    def initialize(number)
        @number = number
    end
    def generate_hash(number)
        claves = ['-----', '.----', '..---', '...--', '....-', '.....', '-....', '--...', '---..', '----.']
        numeros = [0,1,2,3,4,5,6,7,8,9] 
       
        hash = numeros.zip(claves).to_h
        @number = hash[number]      
    end
    def to_morse
        self.generate_hash(@number)
    end
end
m = Morseable.new(3)
print m.to_morse
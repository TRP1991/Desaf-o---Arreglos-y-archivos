=begin 

Desafío 2

Se tiene un archivo notas.data con las notas de un curso

Javiera,9,5,3,9
Francisca,8,3,5,5
Juan,9,5,5,9
Pedro,5,4,6,8
Cecilia,8,7,8,8

Se pide:

    Crear un archivo llamado calculo_notas.rb.
    Crear un método llamado nota_mas_alta dentro del archivo calculo_notas.rb que reciba
    un arreglo con el nombre y notas de un alumno y devuelva la nota mas alta.

Ejemplos:

        nota_mas_alta(data[0]) => 9
        nota_mas_alta(data[1]) => 8

=end

#Apertura del archivo 'notas.data' que va quedando guardado en la variable original_data
data = open ('notas.data').read.split(',')

#Se transforman los datos obtenidos a float y se guardan en la variable data
data = original_data.inject{|data|data.to_f}

#Se define el método con dos argumentos. Esto hará que devuelva la nota más alta 
def nota_mas_alta(name, grade)
    a = name.split

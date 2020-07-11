=begin 

Desafío 1

Crear el programa proyecciones.rb además tendremos un archivo con las proyecciones de venta
de cada mes del próximo año. Este archivo debe llamarse ventas_base.db y estar en el misma
carpeta de  trabajo que el  código. Para  realizar el  ejercicio puedes agregar como contenido el
siguiente.

300070,50520,35000,32810,47999,62050,89100,21000,100010,121900,99549,210000

El desafío consiste en hacer 2 simulaciones.

Las ventas totales dado que en la primera mitad del semestre se vende un 10% más.
Las ventas totales dado que en la segunda mitad del semestre se vende un 20% más.

El resultado debe ser presentado un archivo llamado resultados.data. Los datos deben contener
máximo 2 decimales y estar cada uno en una sola línea.

Uso:

ruby proyecciones.rb

Contenido resultados.data

231231.32
879879.43

Tips:

    El  output en  pantalla no  es  necesario pero  no  afecta la  evaluación, se  debe crear el  archivo
    resultados.data y debe cumplir con el formato establecido.
    Tener cuidado con los datos de entrada, son strings y deben ser tratados como float.
    Se recomienda crear un método que reciba cuatro argumentos:
        El arreglo con los datos.
        El aumento
        Desde qué índice se debe leer el arreglo
        Hasta qué índice se debe leer el arreglo
        Investigar respecto a ruby format number
        El archivo con el que se probará el ejercicio tendrá distintos datos.

=end 

#Apertura de la data ventas_base.db para la extracción de información
data=open('ventas_base.db').read.split(',')

#Comienzo del método en el cual se separa el año en dos semestres y se realiza la suma de las ventas
def projections(sales)
    first_semester = []
    second_semester = []
    sum_first_semester = 0
    sum_second_semester = 0

#Se cuentan y posteriormente se suman las ventas totales dado primer y segundo semestre. 
    n = sales.count
    n.times do |i|
        if i <= 5
            first_semester.push sales[i].to_i
        else
            second_semester.push sales [i].to_i
        end

    end
    first_semester.each do |i|
        sum_first_semester += i
    end

    second_semester.each do |i|
        sum_second_semester += i
    end

#Comienzo Operación
    one = sum_first_semester * 1.1 + sum_second_semester    #primera mitad del semestre se vende un 10% más.
    two = sum_second_semester * 1.2 + sum_first_semester    #segunda mitad del semestre se vende un 20% más.

#Venta anual más suma del primer semestre con el segundo y viceverza 
    add_year = []
    add_year.push one.truncate(2), two.truncate(2)

#Output de datos
    File.write('resultados.data', add_year)
end

print projections(data)
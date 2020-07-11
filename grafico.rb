=begin 

Desafio 4

Crear el  archivo grafico.rb  que  contenga el  método chart  que  construya un  gráfico en  la
consola a partir de un arreglo con datos. El método no debe devolver ningún valor.

Uso:

 irb

 2.6.0 :001 > require_relative "grafico"
 => true
 2.6.0 :002 > chart([5, 3, 2, 5, 10])
 |**********
 |******
 |****
 |**********
 |********************
 >--------------------
 1 2 3 4 5 6 7 8 9 10

 Tips:

    Por cada dato se debe imprimir el | y una cantidad de * equivalente el número o X veces el número.
    Una solución más avanzada podría ajustar la cantidad de * a mostrar por números, la solución
    inicial debe fijar 2 * por cada número.
    Es importante encontrar el número máximo.
=end 


data = [5,3,2,5,10]

def chart(array)
    max = array.max 
    array.each{ |n| print "|" + "**"*n + "\n" }
    print ">" + "--"*max + "\n"
    (1..max).each{ |n| print "#{n} " }
end

chart(data)
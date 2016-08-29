require 'time'

class Automovil
	  def initialize()
	  end
	  def Placa()
	  	print "Matricula del Vehiculo:"
	  	cadena = gets
	  	val = cadena.length
	  	val = val-2
	  	$sub = cadena[val,1]
	  		
	  end
end

class Tiempo
	def initialize()
    end
    def FechaHora()
    	puts "Fecha (AAAAMMDD):"
    	fecha = gets
    	puts "Hora (HHMM):"
    	hora = gets.chomp.to_i
        t = Time.mktime(fecha)
        day = t.strftime("%a")

        h = 0
        if  hora >= 730 and hora <= 930
         h = 1
        end 

        if  hora >= 1600 and hora <= 1930
         h = 1
        end

        if h == 1
        case @sub
        when 1..2 then 
                  if day == "Mon"
                    puts "No puede transitar"
                  end

        when 3..4 then 
                  if day == "Tue"
                    puts "No puede transitar"
                  end

        when 5..6 then 
                  if day == "Wen"
                    puts "No puede transitar"
                  end

        when 7..8 then 
                  if day == "Thu"
                    puts "No puede transitar"
                  end

        when 9    then 
                  if day == "Fri"
                    puts "No puede transitar"
                  end

        when 0    then 
                  if day == "Fri"
                    puts "No puede transitar"
                  end
        else
            puts "No cumple criterio para Evaluacion"

        end
        
        else
         puts "Puede transitar. Horario sin restriccion"
        end


    end
  
    
end 


objeto = Automovil.new()
objeto.Placa
obj = Tiempo.new()
obj.FechaHora
gets()
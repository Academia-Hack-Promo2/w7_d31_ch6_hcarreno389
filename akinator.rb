# Crear un clon de Akinator pero solo para animales en ruby (akinator.rb) preguntando y 
#validando la informacion suministrada por los usuarios hasta que finalmente se obtenga un animal final.

# Para que este reto sea valido se debe tomar en cuenta:

# 1. No se deben usar bucles ni estructuras iterativas.
# 2. Debe estar validada toda la informacion cargada por el usuario con su respectivo feedback 
#(si el juego termina repentinamente o no se explica al usuario el tipo de error se tomara como un fallo en la entrega)
# 3. No es necesario contemplar todos los animales existente, pero si es necesario que el juego sea al menos divertido 
#(al menos 10 animales con caracteristicas distintas al final de cada set de preguntas).

# Para mas referencia revisar http://es.akinator.com

def main
	animales=["Gato.","Perro.","Caballo.","Cochino.","Conejo.","Burro.","Raton.","Leon.","Loro.","Gallina."]
puts "Bienvenido al Akinator de ruby. Los animales en q esta basado el juego son:" 
animales.each do |animal|
	puts animal
end
puts"\n Introduzca nombre del jugador"
nombre = gets.chomp
system ("clear")
puts nombre + " El akinator es un programa que adivina en que animal estas pensando siempre y cuando este entre los 10 ya mencionados.
	Consiste en una serie de preguntas en las cuales debes responder con si (s) o no (n)."
gets
while true
	puts "\t" + nombre + " El animal en q estas pensando ¿tiene cuatro patas?"
	respuesta = gets.chomp.downcase
	if !["s","n"].include?(respuesta) 
		puts "la repuesta debe ser si(s) o no(no).\n\t Por favor vuelve a intentarlo"
		redo
	end
	break	
end
if respuesta == "s"
	animales.pop
	animales.pop
	while true
		puts "ok #{nombre}, ya estamos cerca de leer tus pensamientos.\n\t Ahora cuentame el animal q tienes en mente es un animal salvaje?"
		respuesta = gets.chop.downcase
		if !["s","n"].include?(respuesta) 
			puts "la repuesta debe ser si(s) o no(no).\n\t Por favor vuelve a intentarlo"
			redo
		end
		break
	end
	if respuesta == "s"
		for i in 0..6
		animales.shift
		end
		puts "el animal q estas pensando es '#{nombre}', disculpa el animal no eres tu, es el:"
	else 
		animales.pop
		while true
			puts "Coye me la pones dificil...\n\tEl animal en que estas pensando es un animal domestico?"
			respuesta = gets.chop.downcase
			if !["s","n"].include?(respuesta) 
				puts "la repuesta debe ser si(s) o no(no).\n\t Por favor vuelve a intentarlo"
				redo
			end
			break
		end
		if respuesta == "s"
			for i in 0..4
				animales.pop
			end
			while true
				puts "#{nombre} ya la tengo facil, responde una ultima pregunta.\n\tEl animal q tienes en mente es canino?"
				respuesta = gets.chop.downcase
				if !["s","n"].include?(respuesta) 
					puts "la repuesta debe ser si(s) o no(no).\n\t Por favor vuelve a intentarlo"
					redo
				end
				break
			end
			if respuesta == "s"
				animales.shift
				puts "El animal en que estas pensando es e:"
			else
				animales.pop
				puts "El animal en que estas pensando es el:"
			end
		else
			animales.shift
			animales.shift
			while true
				puts "#{nombre} El animal q tienes en mente es un animal de granja?"
				respuesta = gets.chop.downcase
				if !["s","n"].include?(respuesta) 
					puts "la repuesta debe ser si(s) o no(no).\n\t Por favor vuelve a intentarlo"
					redo
				end
				break
			end
			if respuesta == "s"
				animales.pop
				while true
					puts "Bueno #{nombre}  ya estamos cerca del final\n\tCuentame el animal en que estas pensando se come?"
					respuesta = gets.chop.downcase
					if !["s","n"].include?(respuesta) 
						puts "la repuesta debe ser si(s) o no(no).\n\t Por favor vuelve a intentarlo"
						redo
					end
					break
				end
				if respuesta == "s"
					animales.shift
					animales.pop
					while true
						puts "#{nombre} el animal q tienes en mente huele mal?"
						respuesta = gets.chop.downcase
						if !["s","n"].include?(respuesta) 
							puts "la repuesta debe ser si(s) o no(no).\n\t Por favor vuelve a intentarlo"
							redo
						end
						break
					end
					if respuesta == "s"
						animales.pop
						puts "#{nombre} ya entre a tu mente, el animal que estas pensando es un:"
					else
						animales.shift
						puts "#{nombre} ya entre a tu mente, el animal que estas pensando es un:"
					end
				else
					animales.delete_at(2)
					animales.delete_at(1)
					while true
						puts "#{nombre} estoy entrando a tu mente.\n\tEl animal q tienes en mente es de carreras?"
						respuesta = gets.chop.downcase
						if !["s","n"].include?(respuesta) 
							puts "la repuesta debe ser si(s) o no(no).\n\t Por favor vuelve a intentarlo"
							redo
						end
						break
					end
					if respuesta == "s"
						animales.pop
						puts "#{nombre} entre a tu mente y veo q el animal en que estas pensando es el:"
					else
						animales.shift
						puts "#{nombre} entre a tu mente y veo q el animal en que estas pensando es el:"
					end
				end
			else
				for i in 0..3
					animales.shift
				end
				puts "Bueno #{nombre} el animal que estas pensando es el:"
			end
		end
	end
	
	
else
	for i in 0..7
		animales.shift
	end

	while true
		puts "\tMuy bien #{nombre} el animal en que esats pensando se come??"
		respuesta = gets.chomp.downcase
		if !["s","n"].include?(respuesta) 
		puts "la repuesta debe ser si(s) o no(no).\n\t Por favor vuelve a intentarlo"
		redo
		end
		break
	end
	if respuesta == 's'
		animales.shift
		print "Deacuerdo #{nombre} el animal q estabas pensando es la: "
		
	else
		animales.pop
		print "Deacuerdo #{nombre} el animal en q estabas pensando es el: " 
	end
end

puts animales
end
main
#animales.delete_at(8)

extends  Node2D

var color_borde = Color(0,255,0)



#Dibujar bordes de los container (para separar)
func _draw():
	
	var padre_box_container = self.get_parent() #Debe estar dentro de un BoxContainer para funcionar o que tenga los atributos de margen
	print(padre_box_container)
	var margin_left = 0
	var margin_top = 0
	var margin_right = padre_box_container.get_margin(2) - padre_box_container.get_margin(0)
	var margin_bottom = padre_box_container.get_margin(3) - padre_box_container.get_margin(1)
	print(margin_left)
	print(margin_top)
	print(margin_right)
	print(margin_bottom)
	
	var arreglo_linea_dibujar = [Vector2(margin_left,margin_top), Vector2(margin_right,margin_top), Vector2(margin_right,margin_bottom), Vector2(margin_left, margin_bottom) ]
	var arreglo_tamanio = arreglo_linea_dibujar.size()
	
	
	for i in range(0, arreglo_tamanio ):
		if i != (arreglo_tamanio - 1):
			draw_line(arreglo_linea_dibujar[i], arreglo_linea_dibujar[i+1], color_borde, 1)
		else:
			draw_line(arreglo_linea_dibujar[arreglo_tamanio - 1], arreglo_linea_dibujar[0], color_borde, 1)
		

func _ready():
	
	pass




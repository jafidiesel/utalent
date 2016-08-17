extends Control

var color_fondo = Color(0,0,0)
var rectangulo = Rect2(Vector2(300,300), Vector2(200,200) )

#Dibuja fondo de pantalla
func _draw():
	VisualServer.set_default_clear_color(color_fondo)


func _ready():
	pass




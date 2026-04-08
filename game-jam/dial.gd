extends Node

var dial = ["0","1","2"]
var i = -1
var button1 = Button.new()
var button2 = Button.new()
var texte = Label.new()
var buttonacceuil = Button.new()


func boutton_appuyer():
	i += 1
	if i >2 and i < 4:
		button1.text = "dial1"
		button1.anchor_bottom = 0.855
		button1.anchor_left = 0.859
		button1.anchor_right = 0.887
		button1.anchor_top = 0.776
		button1.pressed.connect(button_remove)
		add_child(button1)
		button2.text = "dial2"
		button2.anchor_bottom = 0.772
		button2.anchor_left = 0.859
		button2.anchor_right = 0.887
		button2.anchor_top = 0.693
		button2.pressed.connect(button_remove)
		add_child(button2)
	elif i >= len(dial):
		print("trop mon gars")
	else :
		texte.text = dial[i]
		texte.anchor_left = 0.0
		texte.anchor_top = 0.562
		texte.anchor_right = 0.2
		texte.anchor_bottom = 0.615
		add_child(texte)


func button_remove():
	remove_child(button1)
	remove_child(button2)


func _on_button_pressed() -> void:
	boutton_appuyer()

func acceuil_pressed():
	add_child($Button)
	add_child($acceuil)
	add_child(texte)
	remove_child(buttonacceuil)


func spawn_menu():
	buttonacceuil.text = dial[i]
	buttonacceuil.anchor_left = 0.0
	buttonacceuil.anchor_top = 0.562
	buttonacceuil.anchor_right = 0.2
	buttonacceuil.anchor_bottom = 0.615
	buttonacceuil.pressed.connect(acceuil_pressed())
	add_child(buttonacceuil)


func _on_button_2_pressed() -> void:
	remove_child($Button)
	remove_child($acceuil)
	remove_child(texte)
	spawn_menu()

extends Area2D

@export var type = 0
@onready var sprite = $Sprite2D
var force = 0

func _ready():
	"""
	0 = pink
	1 = yellow
	2 = blue
	3 = red
	4 = green
	5 = black
	"""

	match type :
		0 :
			force = 600
			sprite.texture = load("res://Sprites/Aqua_Orb.webp")
		1 :
			force = 900
			sprite.texture = load("res://Sprites/Yellow_Orb.webp")
		3 :
			force = 1500
			sprite.texture = load("res://Sprites/Orange_Orb.webp")
		5 :
			force = -2000
			sprite.texture = load("res://Sprites/Black_Orb.png")
		_ :
			force = 0

extends Area2D

@export var type = 0
@onready var sprite = $Sprite2D
var force = 0
var invert = false

func _ready():
	"""
	0 = pink
	1 = yellow
	3 = red
	4 = blue
	5 = black
	"""

	match type :
		0 :
			force = 600
			sprite.texture = load("res://Sprites/Aqua_Orb.webp")
		1 :
			force = 1200
			sprite.texture = load("res://Sprites/Yellow_Orb.webp")
		3 :
			force = 1800
			sprite.texture = load("res://Sprites/Orange_Orb.webp")
		4 :
			force = 800
			invert = true
			sprite.texture = load("res://Sprites/Blue_Orb.webp")
		5 :
			force = -2000
			sprite.texture = load("res://Sprites/Black_Orb.png")
		6 :
			force = -1200
			invert = true
			sprite.texture = load("res://Sprites/Lime_Orb.webp")
		_ :
			force = 0
			sprite.texture = load("res://Sprites/Spike.png")

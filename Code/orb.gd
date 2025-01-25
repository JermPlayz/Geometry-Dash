extends Area2D

@export var type = 0
@onready var sprite = $Sprite2D
var force = 0
var invert = false

func _ready():
	"""
	0 = magenta
	1 = yellow
	2 = red
	3 = cyan
	4 = black
	5 = green
	"""

	match type :
		0 :
			force = 900
			sprite.texture = load("res://Sprites/MagentaJumpRing.webp")
		1 :
			force = 1200
			sprite.texture = load("res://Sprites/YellowJumpRing.webp")
		2 :
			force = 1500
			sprite.texture = load("res://Sprites/RedJumpRing.webp")
		3 :
			force = 600
			invert = true
			sprite.texture = load("res://Sprites/CyanGravityRing.webp")
		4 :
			force = -2000
			sprite.texture = load("res://Sprites/BlackGravityRing.webp")
		5 :
			force = -600
			invert = true
			sprite.texture = load("res://Sprites/GreenGravityRing.webp")
		_ :
			force = 0
			sprite.texture = load("res://Sprites/Spike.png")

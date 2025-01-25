extends Area2D

@export var type = 0
@onready var sprite = $Sprite2D
var force = 0
var invert = false

func _ready():
	"""
	0 = pink
	1 = yellow
	2 = red
	3 = cyan
	"""

	match type :
		0 :
			force = 900
			sprite.texture = load("res://Sprites/MagentaJumpPad.webp")
		1 :
			force = 1200
			sprite.texture = load("res://Sprites/YellowJumpPad.webp")
		2 :
			force = 1500
			sprite.texture = load("res://Sprites/RedJumpPad.webp")
			sprite.offset
		3 :
			force = 600
			invert = true
			sprite.texture = load("res://Sprites/CyanGravityPad.webp")
		_ :
			force = 0
			sprite.texture = load("res://Sprites/Spike.png")

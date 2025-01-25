extends Area2D

@export var type = 0
@onready var sprite = $Sprite2D
var invert = false

func _ready():
	"""
	0 = green
	1 = magenta
	"""

	match type :
		0 :
			sprite.texture = load("res://Sprites/GreenDashRing.webp")
		1 :
			invert = true
			sprite.texture = load("res://Sprites/MagentaDashRing.webp")
		_ :
			sprite.texture = load("res://Sprites/Spike.png")

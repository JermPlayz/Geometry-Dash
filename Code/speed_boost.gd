extends Area2D

@export var type : int
@onready var sprite = $Sprite2D

func _ready():
	match type :
		0 :
			sprite.texture = load("res://Sprites/SpeedPortal%3F.webp")
		1 :
			sprite.texture = load("res://Sprites/SpeedPortal%2B.webp")
		2 :
			sprite.texture = load("res://Sprites/SpeedPortal2B.webp")
		3 :
			sprite.texture = load("res://Sprites/SpeedPortal2B%2B.webp")
		4 :
			sprite.texture = load("res://Sprites/SpeedPortal2B2B.webp")

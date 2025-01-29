extends Area2D

@export var type : int
@onready var sprite = $Sprite2D

func _ready():
	match type :
		0 : #CUBE
			sprite.texture = load("res://Sprites/CubePortalLabelled.webp")
		1 : #WAVE
			sprite.texture = load("res://Sprites/WavePortalLabelled.webp")

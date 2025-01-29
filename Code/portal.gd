extends Area2D

@export var type : int
@onready var sprite = $Sprite2D

func _ready():
	match type :
		0 : #CUBE
			sprite.texture = load("res://Sprites/CubePortalLabelled.webp")
		1 : #WAVE
			sprite.texture = load("res://Sprites/WavePortalLabelled.webp")
		2 : #BALL
			sprite.texture = load("res://Sprites/BallPortalLabelled.webp")
		3 : #UFO
			sprite.texture = load("res://Sprites/UFOPortalLabelled.webp")
		4 : #UP
			sprite.texture = load("res://Sprites/GravityPortalALabelled.webp")
		5 : #DOWN
			sprite.texture = load("res://Sprites/GravityPortalBLabelled.webp")

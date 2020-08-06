extends Node2D

onready var slime = $Slime
onready var map = $Map

func _ready():
	slime.wanderStartPoint = map.region_rect.position
	slime.wanderEndPoint = Vector2(map.region_rect.position.x + map.region_rect.size.x, map.region_rect.position.y + map.region_rect.size.y)

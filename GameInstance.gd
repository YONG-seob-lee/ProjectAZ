extends Node

var player_data = {}
var game_settings = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	print("GameInstance 초기화 완료")
	initialize_game()

func initialize_game():
	load_settings()
	setup_game_data()
	
func load_settings():
	pass

func setup_game_data():
	pass

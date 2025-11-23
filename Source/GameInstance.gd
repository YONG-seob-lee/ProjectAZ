extends Node

var player_data = {}
var game_settings = {}
var manager_list: Dictionary = {}

enum ManagerType
{
	Scene = 0,
	Table = 1,
	Max
}

# Called when the node enters the scene tree for the first time.
func _ready():
	print("GameInstance 초기화 완료")
	initialize_game()

func initialize_game():
	load_settings()
	load_manager()
	
func load_settings():
	pass

func load_manager():
	create_manager(ManagerType.Scene)
	create_manager(ManagerType.Table)
	
func create_manager(type: ManagerType):
	var manager = null
	
	match type:
		ManagerType.Scene:
			manager = SceneManager.new()
		ManagerType.Table:
			manager = TableManager.new()
		_:
			print("Wrong Manager Type.")
	
	manager_list[type] = manager

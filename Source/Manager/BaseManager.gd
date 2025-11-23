# BaseManager.gdz
extends Node
class_name BaseManager

var game_instance: Node

func initialize(_game_instance: Node):
	game_instance = _game_instance
	on_initialize()
	
func on_initialize():
	assert(false, "%s must implement on_initialize()" % get_script().resource_path)

func shutdown():
	assert(false, "%s must implement shutdown()" % get_script().resource_path)
	
func get_manager_name() -> String:
	assert(false, "%s must implement get_manager_name()" % get_script().resource_path)
	return ""

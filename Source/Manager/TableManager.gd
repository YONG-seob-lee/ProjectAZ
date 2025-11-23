extends BaseManager
class_name TableManager

func on_initialize():
	print("TableManager 초기화")

func shutdown():
	print("TableManager 종료")
	
func get_manager_name() -> String:
	return "TableManager"

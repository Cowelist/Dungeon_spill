extends Node2D


@onready var Inventory_space = [null, null]

func _ready() -> void:
	print("Inventory being called")
	add_item_to_inventory("Leg")
	add_item_to_inventory("Leg")
	add_item_to_inventory("Leg")
	remove_item_from_inventory("weg")
func add_item_to_inventory(new_item):
	for i in range (Inventory_space.size()):
		if Inventory_space[i] == null:
			Inventory_space[i] = new_item
			return
	print("Inventory full")
	print(Inventory_space)

func remove_item_from_inventory(item):
	for i in range(Inventory_space.size()):
		if Inventory_space[i] == item:
			Inventory_space[i] = null
			print("item has been removed")
			return
		elif Inventory_space[i] != item:
			print("can not remove item since it is not in inventory")

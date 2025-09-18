extends Control

var map: Dictionary = {
	"Herois" : {
		"Batman": [
			"Escuro",
			"Capa",
			"Orelinha"
		],
		"Super-man": [
			"Capa",
			"Vermelha",
			"Forte"
		]
	},
	"Series" : {
		"Handman": [
			"Capa",
			"Vermelha",
			"Forte"
		],
		"Cabocla": [
			"Capa",
			"Vermelha",
			"Forte"
		],
		"Jason" : [
			"Capa",
			"Vermelha",
			"Forte"
		]
	}
}

func _on_back_pressed() -> void:
	get_node("/root/Autoload/Selected").play()
	queue_free()

func _ready() -> void:
	randomize()
	var category = "Herois"
	var get_category = map[category]
	
	var keys = get_category.keys()  # Pega todas as chaves: ["Batman", "Super-man"]
	var random_key = keys[randi() % keys.size()]  # Escolhe uma chave aleatória
	
	var tips = get_category[random_key]  # Isso é um Array
	var random_item = tips[randi() % tips.size()]  # Escolhe um item aleatório da lista

	print(random_key)

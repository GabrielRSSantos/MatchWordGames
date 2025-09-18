extends Node
class_name MainConfiguration

var map : Dictionary = {}
var map_port: Dictionary = {
"Herois": {
	"batman": ["Homem das trevas.", "Usa capa.", "Tem cinto de utilidades."],
	"superman": ["Voa.", "Tem superforca.", "Vulneravel a kriptonita."],
	"homem_aranha": ["Escala paredes.", "Solta teia.", "Tem sentido aranha."],
	"mulher-maravilha": ["Tem laço magico.", "Amazonas.", "Braceletes indestrutiveis."],
	"flash": ["Supervelocidade.", "Corre no tempo.", "Uniforme vermelho."],
	"aquaman": ["Rei de Atlantida.", "Comanda criaturas marinhas.", "Tridente poderoso."],
	"lanterna-verde": ["Tem anel.", "Cria construtos.", "Membro da tropa intergalactica."],
	"homem-de-ferro": ["Armadura tecnologica.", "Bilionario.", "Voa com propulsores."],
	"capitao-america": ["Escudo indestrutivel.", "Super soldado.", "Lider nato."],
	"viuva-negra": ["Espia.", "Combate corpo a corpo.", "Agente da SHIELD."],
	"thor": ["Deus do trovão.", "Usa martelo.", "Vem de Asgard."],
	"hulk": ["Fica verde.", "Superforca.", "Transforma quando irritado."],
	"pantera-negra": ["Rei de Wakanda.", "Traje vibranio.", "Agil e estrategico."],
	"doutor-estranho": ["Feiticeiro.", "Manipula tempo.", "Usa capa viva."],
	"ciclope": ["Raio pelos olhos.", "Lider dos X-Men.", "Usa visor especial."]
},
"Series": {
	"stranger-things": ["Criancas com poderes.", "Cidade cheia de segredos.", "Mundo paralelo assustador."],
	"breaking-bad": ["Professor vira criminoso.", "Droga azul famosa.", "Parceria explosiva."],
	"game-of-thrones": ["Luta por poder.", "Dragao e magia.", "Mortes inesperadas."],
	"the-boys": ["Herois corruptos.", "Violencia extrema.", "Grupo rebelde."],
	"vikings": ["Guerreiros nordicos.", "Conquistas sangrentas.", "Navios e batalhas."],
	"lost": ["Acidente de aviao.", "Ilha misteriosa.", "Segredos e sobrevivencia."],
	"dark": ["Viagem no tempo.", "Cidade alemã.", "Segredos familiares."],
	"narcos": ["Cartel colombiano.", "Poder e violencia.", "Policia na cola."],
	"black-mirror": ["Tecnologia perigosa.", "Futuro distopico.", "Episodios chocantes."],
	"peaky-blinders": ["Gangue inglesa.", "Chapeu com lamina.", "Negocios sujos."],
	"the-office": ["Escritorio maluco.", "Humor seco.", "Chefes estranhos."],
	"lucifer": ["Diabo charmoso.", "Casos policiais.", "Drama e comedia."],
	"sherlock": ["Detetive genial.", "Crimes complexos.", "Londres sombria."],
	"house": ["Medico sarcastico.", "Casos raros.", "Equipe medica."],
	"how-i-met-your-mother": ["Amigos em NY.", "Bar favorito.", "Busca pelo amor."]
},
"Frutas": {
	"banana": ["Cor amarela vibrante.", "Sabor doce e suave.", "Formato curvado e facil de descascar."],
	"maca": ["Vermelha ou verde.", "Textura crocante.", "Muito consumida no dia a dia."],
	"laranja": ["Fruta citrica e refrescante.", "Formato redondo.", "Fonte de suco natural."],
	"abacaxi": ["Fruta tropical com casca espinhosa.", "Sabor azedo e doce.", "Tem uma coroa no topo."],
	"uva": ["Fruta pequena e delicada.", "Cor roxa ou verde.", "Vem em cachos."],
	"melancia": ["Fruta grande e pesada.", "Casca verde e polpa vermelha.", "Otima para dias quentes."],
	"manga": ["Polpa carnuda e suculenta.", "Cor amarela ou alaranjada.", "Aroma doce e marcante."],
	"kiwi": ["Casca peluda e marrom.", "Polpa verde com sementes.", "Sabor azedinho e refrescante."],
	"morango": ["Fruta pequena e vermelha.", "Sabor doce e levemente acido.", "Muito usada em sobremesas."],
	"pera": ["Formato de gota.", "Textura suave e macia.", "Cor verde ou amarela."],
	"coco": ["Casca dura e fibrosa.", "Polpa branca e sabor leve.", "Fruta tropical muito versatil."],
	"goiaba": ["Polpa rosa ou branca.", "Cheia de sementes pequenas.", "Aroma forte e caracteristico."],
	"limao": ["Fruta citrica e acida.", "Cor verde ou amarela.", "Usado para temperar e fazer sucos."],
	"maracuja": ["Polpa cheia de sementes.", "Sabor azedo e aromatico.", "Casca amarela ou roxa."],
	"figo": ["Fruta macia e doce.", "Cor roxa ou verde.", "Muito usada em doces e compotas."]
	},
"Pais": {
	"brasil": ["Samba e futebol.", "Amazonia gigante.", "Carnaval famoso."],
	"japao": ["Tecnologia avancada.", "Templos e cerejeiras.", "Cultura milenar."],
	"franca": ["Torre famosa.", "Vinhos e queijos.", "Moda e arte."],
	"italia": ["Pizza e massas.", "Ruinas antigas.", "Cidades romanticas."],
	"estados-unidos": ["Hollywood.", "Grandes cidades.", "Diversidade cultural."],
	"china": ["Muralha gigante.", "Populacao enorme.", "Tradicao e modernidade."],
	"alemanha": ["Cerveja e castelos.", "Carros famosos.", "Historia marcante."],
	"espanha": ["Flamenco.", "Praias e festas.", "Arquitetura unica."],
	"portugal": ["Fado e azulejos.", "Pastel de nata.", "Lugares historicos."],
	"argentina": ["Tango.", "Carne e vinhos.", "Paisagens variadas."],
	"mexico": ["Sombrero e tacos.", "Cultura asteca.", "Festas coloridas."],
	"canada": ["Neve e natureza.", "Maple syrup.", "Paisagens geladas."],
	"inglaterra": ["Chuva e cha.", "Realeza.", "Cultura britanica."],
	"grecia": ["Ruinas antigas.", "Ilhas azuis.", "Mitologia famosa."],
	"egito": ["Piramides.", "Deserto e camelos.", "Historia milenar."]
}
}

var map_english: Dictionary = {
"Herois": {
	"batman": ["Dark knight.", "Wears a cape.", "Has a utility belt."],
	"superman": ["Can fly.", "Has super strength.", "Weak to kryptonite."],
	"spider-man": ["Climbs walls.", "Shoots webs.", "Has spider sense."],
	"wonder-woman": ["Has magic lasso.", "Amazon warrior.", "Indestructible bracelets."],
	"flash": ["Super speed.", "Runs through time.", "Wears red suit."],
	"aquaman": ["King of Atlantis.", "Commands sea creatures.", "Carries a trident."],
	"green-lantern": ["Has a ring.", "Creates constructs.", "Member of intergalactic corps."],
	"iron-man": ["High-tech armor.", "Billionaire.", "Flies with boosters."],
	"captain-america": ["Indestructible shield.", "Super soldier.", "Natural leader."],
	"black-widow": ["Spy.", "Hand-to-hand combat.", "SHIELD agent."],
	"thor": ["God of thunder.", "Wields a hammer.", "Comes from Asgard."],
	"hulk": ["Turns green.", "Super strength.", "Transforms when angry."],
	"black-panther": ["King of Wakanda.", "Vibranium suit.", "Agile and strategic."],
	"doctor-strange": ["Sorcerer.", "Manipulates time.", "Wears living cape."],
	"cyclops": ["Shoots eye beams.", "X-Men leader.", "Wears special visor."]
},
"Series": {
	"stranger-things": ["Kids with powers.", "Town full of secrets.", "Creepy parallel world."],
	"breaking-bad": ["Teacher turns criminal.", "Famous blue drug.", "Explosive partnership."],
	"game-of-thrones": ["Power struggle.", "Dragons and magic.", "Unexpected deaths."],
	"the-boys": ["Corrupt heroes.", "Extreme violence.", "Rebel group."],
	"vikings": ["Nordic warriors.", "Bloody conquests.", "Ships and battles."],
	"lost": ["Plane crash.", "Mysterious island.", "Secrets and survival."],
	"dark": ["Time travel.", "German town.", "Family secrets."],
	"narcos": ["Colombian cartel.", "Power and violence.", "Police pursuit."],
	"black-mirror": ["Dangerous tech.", "Dystopian future.", "Shocking episodes."],
	"peaky-blinders": ["British gang.", "Bladed hats.", "Dirty business."],
	"the-office": ["Crazy office.", "Dry humor.", "Weird bosses."],
	"lucifer": ["Charming devil.", "Police cases.", "Drama and comedy."],
	"sherlock": ["Brilliant detective.", "Complex crimes.", "Dark London."],
	"house": ["Sarcastic doctor.", "Rare cases.", "Medical team."],
	"how-i-met-your-mother": ["Friends in NY.", "Favorite bar.", "Search for love."]
},
"Frutas": {
	"banana": ["Bright yellow color.", "Sweet and smooth taste.", "Curved and easy to peel."],
	"apple": ["Red or green.", "Crunchy texture.", "Very popular daily fruit."],
	"orange": ["Citrusy and refreshing.", "Round shape.", "Juice source."],
	"pineapple": ["Tropical with spiky skin.", "Sweet and sour taste.", "Has a crown on top."],
	"grape": ["Small and delicate.", "Purple or green.", "Comes in bunches."],
	"watermelon": ["Big and heavy fruit.", "Green skin and red flesh.", "Great for hot days."],
	"mango": ["Juicy and fleshy pulp.", "Yellow or orange color.", "Sweet and fragrant."],
	"kiwi": ["Fuzzy brown skin.", "Green pulp with seeds.", "Tangy and refreshing."],
	"strawberry": ["Small and red.", "Sweet and slightly acidic.", "Popular in desserts."],
	"pear": ["Teardrop shape.", "Soft and smooth texture.", "Green or yellow color."],
	"coconut": ["Hard and fibrous shell.", "White pulp with light taste.", "Versatile tropical fruit."],
	"guava": ["Pink or white pulp.", "Full of tiny seeds.", "Strong and unique aroma."],
	"lime": ["Citrusy and sour.", "Green or yellow.", "Used in drinks and cooking."],
	"passion-fruit": ["Seed-filled pulp.", "Tangy and aromatic.", "Yellow or purple skin."],
	"fig": ["Soft and sweet fruit.", "Purple or green.", "Used in jams and desserts."]
},
"Pais": {
	"brazil": ["Samba and soccer.", "Huge Amazon.", "Famous carnival."],
	"japan": ["Advanced tech.", "Temples and cherry trees.", "Ancient culture."],
	"france": ["Famous tower.", "Wine and cheese.", "Fashion and art."],
	"italy": ["Pizza and pasta.", "Ancient ruins.", "Romantic cities."],
	"united-states": ["Hollywood.", "Big cities.", "Cultural diversity."],
	"china": ["Great wall.", "Huge population.", "Tradition and modernity."],
	"germany": ["Beer and castles.", "Famous cars.", "Rich history."],
	"spain": ["Flamenco.", "Beaches and parties.", "Unique architecture."],
	"portugal": ["Fado and tiles.", "Custard tarts.", "Historic places."],
	"argentina": ["Tango.", "Meat and wine.", "Diverse landscapes."],
	"mexico": ["Sombreros and tacos.", "Aztec culture.", "Colorful festivals."],
	"canada": ["Snow and nature.", "Maple syrup.", "Cold landscapes."],
	"england": ["Rain and tea.", "Royalty.", "British culture."],
	"greece": ["Ancient ruins.", "Blue islands.", "Famous mythology."],
	"egypt": ["Pyramids.", "Desert and camels.", "Ancient history."]
	}
}

var finished_challenges : Dictionary = {
	"Herois": {},
	"Series": {},
	"Frutas": {},
	"Pais": {},
}

@onready var finished_challenges_copy : Dictionary = {
	"Herois": {},
	"Series": {},
	"Frutas": {},
	"Pais": {},
}

var sound = true
var button_color = Color()
var volume = 0
enum languages { ENGLISH, PORTUGUES }
var game_language = languages.ENGLISH

@onready var total_herois = Autoload.map_english["Herois"].size()
@onready var total_series = Autoload.map_english["Series"].size()
@onready var total_frutas = Autoload.map_english["Frutas"].size()
@onready var total_pais = Autoload.map_english["Pais"].size()

@onready var total = (
	Autoload.map_english["Herois"].size() + 
	Autoload.map_english["Series"].size() + 
	Autoload.map_english["Frutas"].size() +
	Autoload.map_english["Pais"].size()
	)

@onready var original_map = null
@onready var load_sound = preload("res://Sounds/game-music-loop-6-144641.mp3")
@onready var selected_sound = preload("res://Sounds/Selected.wav")
@onready var load_configuration_screen = preload("res://Scenes/configurations.tscn")

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("D"):
		print(finished_challenges)
		print(map)

func _ready() -> void:
	print("ready autoload")
	change_language(languages.ENGLISH)
	adicionar_main_sound()
	adicionar_selected_sound()

func adicionar_main_sound() -> void:
	var main_sound = AudioStreamPlayer.new()
	main_sound.stream = load_sound
	main_sound.autoplay = true
	add_child(main_sound)
	main_sound.play()

func adicionar_selected_sound() -> void:
	var main_sound = AudioStreamPlayer.new()
	main_sound.stream = selected_sound
	main_sound.name = "Selected"
	add_child(main_sound)
	
func load_config_screen() -> void:
	var load_screen = load_configuration_screen.instantiate()
	add_child(load_screen)

func reset_progress() -> void:
	print("reset_progress")
	map.clear()
	finished_challenges.clear()
	map = original_map.duplicate(true)
	finished_challenges = finished_challenges_copy.duplicate(true)

func change_language(lang) -> void:
	game_language = lang
	if game_language == languages.PORTUGUES:
		TranslationServer.set_locale("PT")
		map = map_port.duplicate(true)
		original_map = map.duplicate(true)
	if game_language == languages.ENGLISH:
		TranslationServer.set_locale("EN")
		map = map_english.duplicate(true)
		original_map = map.duplicate(true)

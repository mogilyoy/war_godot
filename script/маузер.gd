extends Spatial


const ADS_LERP = 20
const damage = 500
const anim_speed = 1

onready var animation = $AnimationPlayer
onready var sound = $BAX
onready var muzzle = $Muzzle
onready var bullet = preload("res://scenes/Пуля дура.tscn")

var mag = 30

export var default_positon: Vector3
export var ads_positon: Vector3

# Called when the node enters the scene tree for the first time.
func _ready():
	# camera.get_node(camera_path)
	pass
	
func GunAnimation(vect):
	if animation.is_playing():
			pass
	else:
			var b = bullet.instance()
			muzzle.add_child(b)
			b.SHOOT(vect)
			animation.play("ВЫстрел")
			sound.stop()
			sound.play()
	
	

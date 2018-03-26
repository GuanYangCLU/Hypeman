extends AnimatedSprite

func _ready():
	pass

func _process(delta):
	if (Input.is_action_pressed("ui_left")):
		self.animation = "moveLeft"
	if (Input.is_action_just_released("ui_left")):
		self.animation = "standLeft"
	if (Input.is_action_pressed("ui_right")):
		self.animation = "moveRight"
	if (Input.is_action_just_released("ui_right")):
		self.animation = "standRight"
	if (Input.is_action_pressed("ui_up")):
		self.animation = "moveUp"
	if (Input.is_action_just_released("ui_up")):
		self.animation = "standUp"
	if (Input.is_action_pressed("ui_down")):
		self.animation = "moveDown"
	if (Input.is_action_just_released("ui_down")):
		self.animation = "standDown"
	if (Input.is_action_pressed("ui_accept") and animation == "moveLeft" or "standLeft"):
		self.animation = "hiFiveLeft"
	if (Input.is_action_pressed("ui_accept") and animation == "moveRight" or "standRight"):
		self.animation = "hiFiveRight"
	if (Input.is_action_pressed("ui_accept") and animation == "moveUp" or "standUp"):
		self.animation = "hiFiveUp"
	if (Input.is_action_pressed("ui_accept") and animation == "moveDown" or "standDown"):
		self.animation = "hiFiveDown"
	pass
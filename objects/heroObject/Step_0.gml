if (currentHeroHP < 1) {
	room_goto(menu)
}
image_xscale = 0.7
image_yscale = 0.7

image_angle = point_direction(x, y, mouse_x, mouse_y)

if (keyboard_check_direct(vk_shift)) {
	heroSpeed = runSpeed + herostartSpeed
} else {
	heroSpeed = walkSpeed + herostartSpeed
}

if (!place_meeting(x, y-11, wallObj) and keyboard_check_direct(ord("W"))) {
	direction = 90
	speed = heroSpeed
}
if (!place_meeting(x-11, y, wallObj) and keyboard_check_direct(ord("A"))) {
	direction = 180
	speed = heroSpeed
}
if (!place_meeting(x, y+11, wallObj) and keyboard_check_direct(ord("S"))) {
	direction = 270
	speed = heroSpeed
}
if (!place_meeting(x+11, y, wallObj) and keyboard_check_direct(ord("D"))) {
	direction = 0
	speed = heroSpeed
}

if (!(place_meeting(x-11, y, wallObj) or place_meeting(x, y-11, wallObj)) and (keyboard_check_direct(ord("W"))) and (keyboard_check_direct(ord("A")))) {
	direction = 135
	speed = heroSpeed
}
if (!(place_meeting(x+11, y, wallObj) or place_meeting(x, y-11, wallObj)) and (keyboard_check_direct(ord("W"))) and (keyboard_check_direct(ord("D")))) {
	direction = 45
	speed = heroSpeed
}
if (!(place_meeting(x-11, y, wallObj) or place_meeting(x, y+11, wallObj)) and (keyboard_check_direct(ord("S"))) and (keyboard_check_direct(ord("A")))) {
	direction = 225
	speed = heroSpeed
}
if (!(place_meeting(x+11, y, wallObj) or place_meeting(x, y+11, wallObj)) and (keyboard_check_direct(ord("S"))) and (keyboard_check_direct(ord("D")))) {
	direction = 315
	speed = heroSpeed
}

speed *= .5

if (instance_exists(shotgunObject)) {
	if (mouse_check_button_pressed(mb_left)) {
		image_speed = 1
	}
}
if (!instance_exists(shotgunObject)) {
	image_speed = 0
}	
if (powerupcount > 0) {
	powerupcount --;
}
if (powerupcount <= 0) {
herostartSpeed = 0	
}
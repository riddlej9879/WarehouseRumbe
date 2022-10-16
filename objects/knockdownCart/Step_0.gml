if (collisionCooldown > 0) { //increments cooldown
	collisionCooldown --;
}
move_bounce_solid(true)
if (speed > 0) {
	if (frictionCount > 0){
	frictionCount --;
}
	if (frictionCount = 0) {
	frictionCount = 60
	speed --; 
}}
if (speed > 0) { //if speed is greater than zero, sets sprite based off direction
if (direction >= 315 || direction <= 45) {
	sprite_index = cartRight
	//image_angle = direction
}
if (direction > 45 && direction <= 135) {
	sprite_index = cartUp
	//image_angle = direction
}
if (direction > 135 && direction <= 225) {
	sprite_index = cartLeft
	//image_angle = direction
}
if (direction > 225 && direction < 315) {
	sprite_index = cartDown
	//image_angle = direction
}}
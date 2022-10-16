image_xscale = 1.5
image_yscale = 1.5
x = heroObject.x
y = heroObject.y

image_angle = point_direction(x, y, mouse_x, mouse_y)

firing_delay = firing_delay - 1
recoil = max(0, recoil - 1)

if (mouse_check_button(mb_left)) and (firing_delay < 0) {
	ammoCount --;
	global.shots_fired ++;
	audio_play_sound (firingSound, 15, false)
	recoil = other.gunRecoil
	firing_delay = other.gunFiringDelay
	with (instance_create_layer(heroObject.x, heroObject.y + 16 , "bullet_layer", other.bulletType)) {
		speed = 25
		// other.image_angle refers to the gun object not the bullet
		direction = other.image_angle + random_range(-2, 2)
		image_angle = direction
	}
	 //The below section deals with spawning shell casings for weapons.

var shellinst = instance_create_layer(x, y, "Instances", casingType)
with (shellinst) //with statement sets direction for shells to fly
{
    direction = other.image_angle -90 + kickangle; //takes shell direction from direction player is facing, using image angle
}
}

x = x - lengthdir_x(recoil, image_angle)
y = y - lengthdir_y(recoil, image_angle)
if (ammoCount <= 0) {
instance_destroy()
instance_create_layer(heroObject.x,heroObject.y, "gun_layer", shotgunObject)
}
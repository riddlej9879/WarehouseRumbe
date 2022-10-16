if (knockdownTimer <= 0) {
image_xscale = .7
image_yscale = .7
// A highly modified section of code block pulled from a forum.
// Many adjustments needed to be made to prevent clipping. A touch buggy but functional.
// This section has the enemy object with 900 pixels chase the play.
if (distance_to_object(heroObject) <= 500)
{
	image_angle = point_direction(x,y,heroObject.x,heroObject.y);
	if (place_meeting(x+10, y, wallObj) or place_meeting(x-10, y, wallObj))
	{
		move_towards_point(x, heroObject.y, speed)	
	} 
	else if (place_meeting(x, y+10, wallObj) or place_meeting(x, y-10, wallObj))
	{
		move_towards_point(heroObject.x, y, speed)
	}
	else if (collision_line(x, y, heroObject.x, heroObject.y, wallObj, false, true) = noone)
	{
		direction = point_direction(x, y, heroObject.x, heroObject.y);
		speed = other.enemySpeed;
    }
}
}

/*
else if (distance_to_object(heroObject) < enemyCloseChaseDistance) {
	mp_potential_step(heroObject.x, heroObject.y, speed, true)
}
*/

// What does enemy do upon death
if (currentEnemyHP <= 0) {
	dropItem = irandom_range(1, 100)
	instance_destroy()
	global.truescore = global.truescore + scorevalue
}

if (dropItem > 0) {
	if ((dropItem  > 0) and (dropItem  < 50)) {
		instance_create_layer(self.x, self.y, "Instances", doorKeyObject)
	}
	if ((dropItem  > 10) and (dropItem  < 20)) {
		instance_create_layer(self.x, self.y, "Instances", weaponPickup)
	}
	if ((dropItem  > 20) and (dropItem  < 30)) {
		instance_create_layer(self.x, self.y, "Instances", weaponPickup)
	}
	if ((dropItem  > 30) and (dropItem  < 40)) {
		instance_create_layer(self.x, self.y, "Instances", weaponPickup)
	}
	if ((dropItem  > 40) and (dropItem  < 50)) {
		instance_create_layer(self.x, self.y, "Instances", weaponPickup)
	}
	if ((dropItem  > 50) and (dropItem  < 60)) {
		instance_create_layer(self.x, self.y, "Instances", weaponPickup)
	}
	if ((dropItem  > 60) and (dropItem  < 70)) {
		instance_create_layer(self.x, self.y, "Instances", healthPickup)
	}
	if ((dropItem  > 70) and (dropItem  < 80)) {
		instance_create_layer(self.x, self.y, "Instances", healthPickup)
	}
	if ((dropItem  > 80) and (dropItem  < 90)) {
		instance_create_layer(self.x, self.y, "Instances", healthPickup30)
	}
	if ((dropItem  > 90) and (dropItem  < 100)) {
		instance_create_layer(self.x, self.y, "Instances", healthPickup50)
	}
}
if (knockdownTimer > 0) {
	knockdownTimer --;
	speed = 0
}
if (knockdownTimer = 1) {
	knockdownTimer --;
	image_speed = 1
	sprite_index = mainSprite //uses dynamic sprite to reset sprite
	speed = enemySpeed
}

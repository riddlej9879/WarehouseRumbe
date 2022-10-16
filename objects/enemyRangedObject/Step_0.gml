/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (rangedAttackDelay > 0 && knockdownTimer <= 0){
	rangedAttackDelay -= 1
}

if (distance_to_object(heroObject) > enemyFarChaseDistance) {
	enemySpeed = enemyFarSpeed
}
if (distance_to_object(heroObject) < enemyCloseChaseDistance) {
	enemySpeed = enemyCloseSpeed
}

//if text_alpha > 0 {
//	text_alpha -= .01
//}

if distance_to_object(heroObject <= 300) and (rangedAttackDelay <= 0) {
	rangedAttackDelay = rangedAttackTimer
	text_alpha = 2.5

	direction = point_direction(x, y, heroObject.x, heroObject.y)

	canNumber = irandom_range(0, array_length(rangedWeapon)-1)
	with (instance_create_layer(self.x, self.y, "Instances", rangedWeapon[canNumber])) {
		speed = 10
	}
}
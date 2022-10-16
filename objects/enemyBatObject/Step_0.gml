/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (knockdownTimer <= 0){
// When tank gets close enough to the hero it lunges
if attackTimer > 0 {
	attackTimer -= 1
}

if distance_to_object(heroObject) < enemyCloseChaseDistance and attackTimer <= 0{
	speed = enemyCloseSpeed
	image_speed = 1
} 
else {
	speed = enemyFarSpeed
}
}
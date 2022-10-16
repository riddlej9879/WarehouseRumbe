if (collisionCooldown <= 0) { //if cooldown is done, player can bump cart
direction = heroObject.direction
speed = other.speed; 
collisionCooldown = (room_speed * 5)
}

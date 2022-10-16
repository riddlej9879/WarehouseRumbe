if spawnTimer > 0 {
	spawnTimer -= 1
	// Default distance check should be 750 to 800 so enemies dont spawn on screen.
	// Maybe have a max distance to prevent a large number of distant enemies.
} else if (distance_to_object(heroObject) > 100){ 
	spawnTimer = spawnInterval
	
	if instance_number(AllEnemies) < maxEnemies {
	num = irandom_range(0, array_length(enemyList)-1)
	X = irandom_range(-100, 100)
	Y = irandom_range(-100, 100)
		instance_create_layer(x + X, y + Y, "Instances", enemyList[num])
	}
}

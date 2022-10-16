if (place_meeting(x, y, AllEnemies)) {
	audio_play_sound(Explosion_sfx, 5, false)
	image_speed = 0
	image_index = 0
	speed = 0;
	scaletimer = 2 * room_speed;
}

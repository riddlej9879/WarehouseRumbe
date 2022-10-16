//see right paddle code for explanations
sprite_index = ballSprite_RightBounce;
if (other.y > y) {
	diff = (other.y - y) / (other.sprite_height/2);
	angle = 180 - (45*diff);
	motion_set (angle, speed+2);
}

else if (other.y < y) {
	diff = (y - other.y) / (other.sprite_height/2) {
	angle = 180 + (45*diff);
	motion_set (angle, speed+2);
	}

}

else if (other.y == y) {
	diff = (y - other.y) / (other.sprite_height/2) {
	angle = 180;
	motion_set (angle, speed+2);
	}
}
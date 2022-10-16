if (other.x > x) {
if (other.y > y) {
	diff = (other.y - y) / (other.sprite_height/2);
	angle = 0 +(45*diff);
	motion_set (angle, speed+2);
	sprite_index = ballSprite_leftBounce;
}

else if (other.y < y) {
	diff = (y - other.y) / (other.sprite_height/2) {
	angle = 0 - (45*diff);
	motion_set (angle, speed+2);
	sprite_index = ballSprite_leftBounce;
	}

}
else if (other.y == y) {
	diff = (y - other.y) / (other.sprite_height/2) {
	angle = 0;
	motion_set (angle, speed+2);
	sprite_index = ballSprite_leftBounce;
	}
}
}
if (other.x < x) {
if (other.y > y) { //compares height of the impacted area and the ball's height
	diff = (other.y - y) / (other.sprite_height/2); //takes difference betweem height of the sprite and the impact location
	angle = 180 - (45*diff); //makes angle = the difference between the height and hit location times 45 degrees
	motion_set (angle, speed+2); //sets direction as the newly calculated angle and increases speed
	sprite_index = ballSprite_RightBounce; //plays animation on impact
}

else if (other.y < y) { //if the ball hits the low point on the paddle, bounces back at the proper angle
	diff = (y - other.y) / (other.sprite_height/2) {
	angle = 180 + (45*diff);
	motion_set (angle, speed+2);
	sprite_index = ballSprite_RightBounce;
	}

}

else if (other.y == y) { //if the ball hits the middle of the paddle (decided by y location), bounces straight back
	diff = (y - other.y) / (other.sprite_height/2) {
	angle = 180;
	motion_set (angle, speed+2);
	sprite_index = ballSprite_RightBounce;
	}
}}
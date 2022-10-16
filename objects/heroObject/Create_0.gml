draw_set_colour(c_black);
maxHeroHP = 50
currentHeroHP = maxHeroHP
herostartSpeed = 0
heroSpeed = 0
walkSpeed = 6
runSpeed = 10

direction = 0

// Check for getting through door
hasKey = false
global.shots_fired = 0
if (!variable_global_exists("truescore")) {
  // initialise the variable if it is unset
  global.truescore = 0;
}
image_speed = 0
powerupcount = 0
image_speed = 0;
image_index = choose(1,2,3,4);
image_angle = choose(1, 2, 3, 4, 5) * choose(1,2,3,4,5) + choose(0, 90, 280, 270);
if (instance_exists(AllHeroProjectiles)) {
image_xscale = AllHeroProjectiles.bullet_damage * .2;
image_yscale = AllHeroProjectiles.bullet_damage * .2;
}
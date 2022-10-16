if (bullets > 0) {
	currentRotation ++;
	bullets --;
var shellinst = instance_create_layer(x, y, "Instances", displayShellEye)
with (shellinst) //with statement sets direction for shells to fly
{
    direction = 270 + bulletspawner.currentRotation; 
}}

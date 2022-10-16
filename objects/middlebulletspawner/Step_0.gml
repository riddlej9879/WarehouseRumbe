if (bullets > 0) {
	bullets --;
var shellinst = instance_create_layer(x, y, "Instances", displayShell)
with (shellinst) //with statement sets direction for shells to fly
{
    direction = 270 + kickangle; 
}}

//draw_text(x, y -50, "Speed: " + string(speed))
//draw_text(x, y -30, "AW: " + string(attackTimer))
//draw_text(x, y -30, "Collision Line: " + string(((collision_line(x, y, heroObject.x, heroObject.y, wallObj, false, true) = noone) 
//	  and (place_free(x+10, y) and place_free(x-10, y) and place_free(x, y+10) and place_free(x, y-10)))))
draw_text(x, y-30, "HP: " + string(currentEnemyHP))

draw_self()
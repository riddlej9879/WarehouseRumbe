draw_set_color(c_white)
image_angle = 0;
draw_text_transformed(x, y, "SCORE: ", 2, 2, image_angle);
draw_text_transformed(x+200, y, score, 2, 2, image_angle);
if (score = global.truescore) {
	draw_text(x, y+60, "Press Enter to continue, or Escape to quit to menu.")
}
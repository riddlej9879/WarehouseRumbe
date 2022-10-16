cam = view_camera[0];
x1 = camera_get_view_x(cam);
y1 = camera_get_view_y(cam);
x2 = x1 + camera_get_view_width(cam) + 64;
y2 = y1 + camera_get_view_height(cam) + 64;



if(!point_in_rectangle( x, y, x1, y1, x2, y2)) {
	instance_destroy();
}

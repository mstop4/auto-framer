if (draw_stats) {
	draw_set_font(fnt_test);
	draw_set_colour(c_white);
	draw_set_halign(fa_left);

	draw_text(0, 0, "Display: " + string(display_get_width()) + " x " + string(display_get_height()) + "\n" +
		"Window: " + string(window_width) + " x " + string(window_height) + "\n" + 
		"Viewport: " + string(view_get_wport(0)) + " x " + string(view_get_hport(0))  + "\n" +
		"Camera: " + string(camera_get_view_width(view_camera[0])) + " x " + string(camera_get_view_height(view_camera[0])) + " / " + string(camera_get_view_x(view_camera[0])) + ", " + string(camera_get_view_y(view_camera[0])) + "\n" +
		"Application Surface: " + string(surface_get_width(application_surface)) + " x " + string(surface_get_height(application_surface))  + "\n" +
		"Game Area: " + string(gameArea_width) + " x " + string(gameArea_height)
	);

	draw_set_halign(fa_right);
	draw_text(window_get_width(), 0, string(fps_real));
}
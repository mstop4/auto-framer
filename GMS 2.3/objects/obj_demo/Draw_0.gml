if (draw_test_pattern) {
	draw_set_colour($FFB000);
	draw_rectangle(0, 0, gameArea_width, gameArea_height, false);

	draw_set_colour($806800);
	draw_circle(16, 16, 16, false);
	draw_circle(gameArea_width - 16, 16, 16, false);
	draw_circle(16, gameArea_height - 16, 16, false);
	draw_circle(gameArea_width - 16, gameArea_height - 16, 16, false);
}
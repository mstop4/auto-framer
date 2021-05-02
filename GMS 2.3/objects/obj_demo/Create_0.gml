if (track_window_resize) prev_win_size = new Vector2(window_get_width(), window_get_height());

fixed_display_size = !(os_type == os_ios || os_type == os_android);
var _d = new Vector2(0, 0);

if (fixed_display_size) {
	_d.y = fixedDisplay_height;
	_d.x = fixedDisplay_width;
	window_set_rectangle(abs(display_get_width() - _d.x) / 2, abs(display_get_height() - _d.y) / 2, _d.x, _d.y);
}

else {
	_d.y = display_get_height();
	_d.x = display_get_width();
	window_set_size(_d.x, _d.y);
}

auto_frame(_d);

window_size = new Vector2(_d.x, _d.y);
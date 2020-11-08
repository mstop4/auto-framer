if (track_window_resize) prev_win_size = new Dimensions2(window_get_width(), window_get_height());

fixed_display_size = !(os_type == os_ios || os_type == os_android);
var _d = new Dimensions2(0, 0);

if (fixed_display_size) {
	_d.h = fixedDisplay_height;
	_d.w = fixedDisplay_width;
	window_set_rectangle(abs(display_get_width() - _d.w) / 2, abs(display_get_height() - _d.h) / 2, _d.w, _d.h);
}

else {
	_d.h = display_get_height();
	_d.w = display_get_width();
	window_set_size(_d.w, _d.h);
}

auto_frame(_d);

window_size = new Dimensions2(_d.w, _d.h);
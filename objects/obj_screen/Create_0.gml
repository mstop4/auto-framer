prev_win_width = window_get_width();
prev_win_height = window_get_height();

fixed_display_size = !(os_type == os_ios || os_type == os_android);
var _dh, _dw;

if (fixed_display_size) {
	_dh = fixedDisplay_height;
	_dw = fixedDisplay_width;
	window_set_rectangle(abs(display_get_width() - _dw) / 2, abs(display_get_height() - _dh) / 2, _dw, _dh);
}

else {
	_dh = display_get_height();
	_dw = display_get_width();
	window_set_size(_dw, _dh);
}

auto_frame(_dw, _dh);
if (track_window_resize) {
	var _cur_win_size = new Dimensions2(window_get_width(), window_get_height());

	if (_cur_win_size.w != prev_win_size.w || _cur_win_size.h != prev_win_size.h) {
		alarm[0] = 5;
	}

	prev_win_size.w = _cur_win_size.w;
	prev_win_size.h = _cur_win_size.h;
}
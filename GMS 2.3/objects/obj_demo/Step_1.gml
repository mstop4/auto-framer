if (track_window_resize) {
	var _cur_win_size = new Vector2(window_get_width(), window_get_height());

	if (_cur_win_size.x != prev_win_size.x || _cur_win_size.y != prev_win_size.y) {
		alarm[0] = 5;
	}

	prev_win_size.x = _cur_win_size.x;
	prev_win_size.y = _cur_win_size.y;
}
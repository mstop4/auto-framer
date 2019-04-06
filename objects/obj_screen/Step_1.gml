var _cur_win_width = window_get_width();
var _cur_win_height = window_get_height();

if (_cur_win_width != prev_win_width || _cur_win_height != prev_win_height) {
	alarm[0] = 5;
}

prev_win_width = _cur_win_width;
prev_win_height = _cur_win_height;
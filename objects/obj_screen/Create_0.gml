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

view_set_wport(0, _dw);
view_set_hport(0, _dh);

var _ratio = _dw / _dh;
var _gameArea_ratio = gameArea_width / gameArea_height;

gameArea_fillMinorAxis = _ratio < _gameArea_ratio;

var _cam_w, _cam_h;

if (gameArea_fillMinorAxis) {
	// portrait
	if (_ratio <= 1) {
		_cam_w = gameArea_width;
		_cam_h = gameArea_width / _ratio;
	}
	
	// landscape
	else {
		_cam_w = gameArea_height * _ratio;
		_cam_h = gameArea_height;
	}
}

else {
	// portrait
	if (_ratio <= 1) {
		_cam_w = gameArea_height * _ratio;
		_cam_h = gameArea_height;
	}
	
	// landscape
	else {
		_cam_w = gameArea_width;
		_cam_h = gameArea_width / _ratio;
	}
}
	
surface_resize(application_surface, _dw, _dh);
camera_set_view_size(view_camera[0], _cam_w, _cam_h);
camera_set_view_pos(view_camera[0], -(_cam_w - gameArea_width) / 2 + gameArea_offsetX, -(_cam_h - gameArea_height) / 2 + gameArea_offsetY);
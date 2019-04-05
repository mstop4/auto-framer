if (fixed_display_size) {
	window_set_rectangle(abs(display_get_width() - fixedDisplay_width) / 2, abs(display_get_height() - fixedDisplay_height) / 2, fixedDisplay_width, fixedDisplay_height);
	view_set_wport(0, fixedDisplay_width);
	view_set_hport(0, fixedDisplay_height);
	
	var _ratio = fixedDisplay_width / fixedDisplay_height;
	
	// portrait
	if (_ratio <= 1) {
		var _cam_w = gameArea_width;
		var _cam_h = gameArea_width / _ratio;
	}
	
	// landscape
	else {
		var _cam_w = gameArea_height * _ratio;
		var _cam_h = gameArea_height;
	}

	surface_resize(application_surface, fixedDisplay_width, fixedDisplay_height);
	camera_set_view_size(view_camera[0], _cam_w, _cam_h);
	camera_set_view_pos(view_camera[0], -(_cam_w - gameArea_width) / 2, -(_cam_h - gameArea_height) / 2);
}

else {
	var _dh = display_get_height();
	var _dw = display_get_width();
	
	window_set_size(_dw, _dh);
	view_set_wport(0, _dw);
	view_set_hport(0, _dh);
	
	var _ratio = _dw / _dh;
	
	// portrait
	if (_ratio <= 1) {
		var _cam_w = gameArea_width;
		var _cam_h = gameArea_width / _ratio;
	}
	
	// landscape
	else {
		var _cam_w = gameArea_height * _ratio;
		var _cam_h = gameArea_height;
	}
	
	surface_resize(application_surface, _dw, _dh);
	camera_set_view_size(view_camera[0], _cam_w, _cam_h);
	camera_set_view_pos(view_camera[0], -(_cam_w - gameArea_width) / 2, -(_cam_h - gameArea_height) / 2);
}
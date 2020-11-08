/// @function  auto_frame(dim)
/// @argument  {Dimensions2} dim
function auto_frame(_dim) {
	view_set_wport(0, _dim.w);
	view_set_hport(0, _dim.h);
	surface_resize(application_surface, _dim.w, _dim.h);

	var _ratio = _dim.w / _dim.h;
	var _gameArea_ratio = gameArea_width / gameArea_height;
	gameArea_fillMinorAxis = _ratio < _gameArea_ratio;

	var _cam_size = new Dimensions2(0, 0);

	if (gameArea_fillMinorAxis) {
		_cam_size.w = gameArea_width;
		_cam_size.h = gameArea_width / _ratio;
	}
	
	else {
		_cam_size.w = gameArea_height * _ratio;
		_cam_size.h = gameArea_height;
	}
	
	camera_set_view_size(view_camera[0], _cam_size.w, _cam_size.h);
	camera_set_view_pos(view_camera[0], -(_cam_size.w - gameArea_width) / 2 + gameArea_offsetX, -(_cam_size.h - gameArea_height) / 2 + gameArea_offsetY);
}

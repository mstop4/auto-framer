/// @function  auto_frame(dim)
/// @argument  {Vector2} dim
function auto_frame(_dim) {
	view_set_wport(0, _dim.x);
	view_set_hport(0, _dim.y);
	surface_resize(application_surface, _dim.x, _dim.y);

	var _ratio = _dim.x / _dim.y;
	var _gameArea_ratio = gameArea_width / gameArea_height;
	gameArea_fillMinorAxis = _ratio < _gameArea_ratio;

	var _cam_size = new Vector2(0, 0);

	if (gameArea_fillMinorAxis) {
		_cam_size.x = gameArea_width;
		_cam_size.y = gameArea_width / _ratio;
	}
	
	else {
		_cam_size.x = gameArea_height * _ratio;
		_cam_size.y = gameArea_height;
	}
	
	camera_set_view_size(view_camera[0], _cam_size.x, _cam_size.y);
	camera_set_view_pos(view_camera[0], -(_cam_size.x - gameArea_width) / 2 + gameArea_offsetX, -(_cam_size.y - gameArea_height) / 2 + gameArea_offsetY);
}

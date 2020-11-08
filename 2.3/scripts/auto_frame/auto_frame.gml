/// @function  auto_frame(dw, dh)
/// @argument  dw 
/// @argument  dh 
function auto_frame() {

	var _dw = argument[0];
	var _dh = argument[1];

	view_set_wport(0, _dw);
	view_set_hport(0, _dh);
	surface_resize(application_surface, _dw, _dh);

	var _ratio = _dw / _dh;
	var _gameArea_ratio = gameArea_width / gameArea_height;
	gameArea_fillMinorAxis = _ratio < _gameArea_ratio;

	var _cam_w, _cam_h;

	if (gameArea_fillMinorAxis) {
		_cam_w = gameArea_width;
		_cam_h = gameArea_width / _ratio;
	}
	
	else {
		_cam_w = gameArea_height * _ratio;
		_cam_h = gameArea_height;
	}
	
	camera_set_view_size(view_camera[0], _cam_w, _cam_h);
	camera_set_view_pos(view_camera[0], -(_cam_w - gameArea_width) / 2 + gameArea_offsetX, -(_cam_h - gameArea_height) / 2 + gameArea_offsetY);


}

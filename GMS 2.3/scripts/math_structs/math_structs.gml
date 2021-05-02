/// @func Vector2(x, y)
function Vector2(_x, _y) constructor {
	x = _x;
	y = _y;
	
	static to_string = function() {
		return "[ " + string(x) + ", " + string(y) + " ]";
	}
	
	static add = function(_vec2) {
		return new Vector2(x + _vec2.x, y + _vec2.y);
	}
	
	static subtract = function(_vec2) {
		return new Vector2(x - _vec2.x, y - _vec2.y);
	}
}
/// @func Dimensions2(w, h)
function Dimensions2(_w, _h) constructor {
	w = _w;
	h = _h;
	
	static to_string = function() {
		return "[ " + string(w) + ", " + string(h) + " ]";
	}
}
function scr_object_center_coords(obj) {
	return [(obj.bbox_left + obj.bbox_right)/2, (obj.bbox_top + obj.bbox_bottom)/2];
}
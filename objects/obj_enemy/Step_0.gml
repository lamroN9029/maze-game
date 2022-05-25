/// @description Insert description here
// You can write your code in this editor

if !freeze {

	
	// animate 
	
	image_speed = 2;
	
	// set sprite
	
	if direction >= 315 and direction < 360 or direction >= 0 and direction < 45
		face = RIGHT;
	if direction >= 225 and direction < 315
		face = DOWN;
	if direction >= 135 and direction < 225
		face = LEFT;
	if direction >= 45 and direction < 135
		face = UP;
	sprite_index = sprite[face];
	
	if !key {
	
		if mp_grid_path(global.grid, path, x, y, obj_bookshelf.x, obj_bookshelf.y, 1) {
	
			path_start(path, move_speed, path_action_stop, false);
		
		}
	
	
		if path_position == 1 {
		
			key = true;
	
		}
	
	}
	else {
	
		if mp_grid_path(global.grid, path, x, y, obj_door.x, obj_door.y, 1) {
		
			path_start(path, move_speed, path_action_stop, false);
		
		}
		
		if path_position == 1 {
		
			if !instance_exists(obj_end) {
		
				win = true;
				instance_create_layer(-1, -1, "ui", obj_end);
			
			}
			
			
		}
	
	}
	
	// path
	
	path_speed = move_speed;
	
}
else {

	// animate  

	image_speed = 0;
	image_index = 0;
	
	// path
	
	path_speed = 0;

}



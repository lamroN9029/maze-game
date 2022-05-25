/// @description Insert description here
// You can write your code in this editor

pl = obj_player;

ev_area_width  = 4;
ev_area_height = 16;

if collision_rectangle(x - ev_area_width, y, x + ev_area_width, y + ev_area_height, obj_player, true, true) && pl.face == UP {
	

	if pl.key == true {
		
		if !instance_exists(obj_end) {
		
			instance_create_layer(-1, -1, "ui", obj_end);
			
		}
		
	}
	else {
		
		if !instance_exists(obj_textbox) {
		
			instance_create_layer(-1, -1, "ui", obj_textbox);
			tb = obj_textbox;
			
			tb.text[1] = "The door is locked.";
			
		}
		
	}
	
	
	
}


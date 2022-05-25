/// @description Insert description here
// You can write your code in this editor

pl = obj_player;

ev_area_width  = 8;
ev_area_height = 16;

if collision_rectangle(x - ev_area_width, y, x + ev_area_width, y + ev_area_height, pl, true, true) and pl.face == UP {
	
	if !instance_exists(obj_textbox) {
		
		instance_create_layer(-1, -1, "ui", obj_textbox);
		
		tb = obj_textbox;
		tb.text[1] = "Searching a bookshelf...";
		
		if pl.key == false {
		
			tb.text[2] = "You find:\n 1 door key";
			pl.key = true;
			
		}
	
		else {
		
			tb.text[2] = "Nothing.";
	
		}

	}

}



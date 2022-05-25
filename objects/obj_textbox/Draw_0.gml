/// @description Insert description here
// You can write your code in this editor

accept_key = keyboard_check_pressed(vk_space);

cam0_x = camera_get_view_x(view_camera[0]);
cam0_y = camera_get_view_y(view_camera[0]);
cam0_w = camera_get_view_width(view_camera[0]);

textbox_x = cam0_x + ( cam0_w - textbox_width ) / 2;
textbox_y = cam0_y + 200;


// setup

if setup == false { 

	// for textbox that created without init text[]
	setup = true;
	page_number = array_length(text);
	for (p = 0; p < page_number; ++p) {
		
		text_length[p] = string_length(text[p]);
		
	}
		
}

// typing the text

if draw_char < text_length[page] {
	
	draw_char += text_speed;
	draw_char = clamp(draw_char, 0, text_length[page]);
	
}

// flip through pages

if accept_key { 
	
	
	if draw_char == text_length[page] {  // typing is done
		
		
		if page < page_number - 1{ // have next_page
			
			++page;
			draw_char = 0;
			
		}
		
		else { // haven't next page
			
			instance_destroy(); // destroy self
			
		}
		
	}
	else{ // typing isn't done
		
		draw_char = text_length[page];
	
	}
	
}

// draw textbox 

spr_textbox_w = sprite_get_width(spr_textbox);
spr_textbox_h = sprite_get_height(spr_textbox);

draw_sprite_ext(spr_textbox, 0, textbox_x, textbox_y, textbox_width / spr_textbox_w, textbox_height / spr_textbox_h, 0, c_white, 0.8);

// draw text 

draw_set_font(f_textbox);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

str = string_copy(text[page], 1, round(draw_char));
draw_text_ext_color(textbox_x + textbox_width / 2, textbox_y + textbox_height / 2, str, sep, w, c_black, c_black, c_black, c_black, 1);
